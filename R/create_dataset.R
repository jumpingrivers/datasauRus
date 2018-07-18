# from pytweening
# https://github.com/asweigart/pytweening/blob/74a251a6d1500ac678fc259eb1f9517c6a71a190/pytweening/__init__.py#L156
easeInOutQuad <- function(value){
  if (value < 0.5){
    2 * value^2
  }else{
    value <- value * 2 - 1
    -0.5 * (value*(value-2) - 1)
  }

}

#' Function doing one round of perturbation
#'
#' @param df current dataset
#' @param target_df target df
#' @param shake maximum amount of movement in each iteration
#' @param allowed_dist allowed distance
#' @param temp current temperature
#' @param x_bounds bounds on x
#' @param y_bounds bounds on y
#'
#' @return new dataset after one round of perturbation
#'
#' @examples
perturb <- function(df, target_df,
                    shake,
                    allowed_dist,
                    temp,
                    x_bounds = c(0, 100),
                    y_bounds = c(0, 100)){
  # take one row at random, and move one of the points a bit
  row <- sample(1:nrow(df), size = 1)
  i_xm <- df[row, "x"]
  i_ym <- df[row, "y"]

  # this is the simulated annealing step, if "do_bad", then we are willing to
  # accept a new state which is worse than the current one
  do_bad <- (runif(n = 1) < temp)

  cond <- TRUE
  while(cond){
    xm <- i_xm + rnorm(n = 1)*shake
    ym <- i_ym + rnorm(n = 1)*shake
    # calculate how far the point is from the closest one of these
    old_dist <- get_distance_to_target(i_xm, i_ym, target_df)
    new_dist <- get_distance_to_target(xm, ym, target_df)
    # check if the new distance is closer than the old distance
    # or, if it is less than our allowed distance
    # or, if we are do_bad, that means we are accpeting it no matter what
    # if one of these conditions are met, jump out of the loop
    close_or_just_bad_anyway <- (new_dist < old_dist | new_dist < allowed_dist | do_bad)

    inside_bounds <- ym > y_bounds[1] & ym < y_bounds[2] & xm > x_bounds[1] & xm < x_bounds[2]

    cond <- !(close_or_just_bad_anyway & inside_bounds)
  }
  # set the new data point, and return the set
  df[row, "x"] <- xm
  df[row, "y"] <- ym
  return(df)

}


# This function calculates the minimum distance between a point and other points,
# used
# to determine if the points are getting closer to the target

get_distance_to_target <- function(px, py, target_df){
  distances <- sqrt((px-target_df$x)^2 + (py-target_df$y)^2)
  min(distances)
}

# This function calculates the summary statistics for the given set of points
# IMO it should be passed by the user, because that's the customizable part
# but in the examples I can use the same as datasaurus Python code authors
get_values <- function(df){
  c("mean_x" = mean(df$x),
    "mean_y" = mean(df$y),
    "sd_x" = sd(df$x),
    "sd_y" = sd(df$y),
    "corr" = cor(df$x, df$y, method = "pearson"))

}

# checks to see if the statistics are still within the acceptable bounds
# with df1 as the original dataset, and df2 as the one we are testing
#
is_error_still_ok <- function(df1, df2, decimals = 2){
  r1 <- get_values(df1)
  r2 <- get_values(df2)

  er <- abs(r1 - r2)

  return (!any(er > 10^(-decimals)))
}

#' Create a dataset
#'
#' @description Create a dataset with similar statistics to the initial dataset
#'  and a shape close to a target dataset.
#'
#'@references Matejka, J., & Fitzmaurice, G. (2017).
#'Same Stats, Different Graphs: Generating Datasets with
#'Varied Appearance and Identical Statistics through Simulated
#'Annealing. _CHI 2017 Conference proceedings: ACM SIGCHI
#'Conference on Human Factors in Computing Systems._
#' Retrieved from [https://www.autodeskresearch.com/publications/samestats](https://www.autodeskresearch.com/publications/samestats).
#'
#' @param df initial dataset
#' @param target_df target dataset
#' @param iters number of iterations
#' @param decimals allowed difference to the initial statistics
#' @param shake  maximum amount of movement in each iteration
#' @param max_temp temperature at the beginning of the simulation
#' @param min_temp temperature at the end
#' @param allowed_dist allowed distance of new position to target dataset
#'
#' @return new dataset closer to the target one,
#' but with similar statistics compared to the initial df
#' @export
#'
#' @examples
create_dataset <- function(df,
                           target_df,
                           iters = 100, decimals = 2, shake = 0.2,
                           max_temp = 0.4, min_temp = 0,
                           allowed_dist = 2){
  df0 <- df
  pb <- progress::progress_bar$new(total = iters)
  pb$tick(0)
  for(i in 0:(iters-1)){
    pb$tick()
    temp <- (max_temp - min_temp) * easeInOutQuad(((iters-i)/iters)) + min_temp

    df2 <- perturb(df, target_df,
                   shake = shake,
                   allowed_dist = allowed_dist, # bigger than original
                   temp = temp,
                   x_bounds = c(0, 100),
                   y_bounds = c(0, 100))

    if(is_error_still_ok(df0, df2, decimals = 1)){
      df <- df2
    }
  }
  df
}
