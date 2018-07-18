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
#' @export
#'
#' @examples
perturb <- function(df, target_df,
                    shake,
                    allowed_dist = 2,
                    temp = 0,
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

    if ((new_dist < old_dist | new_dist < allowed_dist | do_bad) &
        ym > y_bounds[1] & ym < y_bounds[2] & xm > x_bounds[1] & xm < x_bounds[2]){
        cond <- FALSE
    }
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

create_dataset <- function(df,
                           target_df,
                           iters = 100, decimals = 2, shake = 0.2,
                           max_temp = 0.4, min_temp = 0){
  i <- 0

  while(i < iters){
    temp <- (max_temp - min_temp) * easeInOutQuad(((iters-i)/iters)) + min_temp

    df2 <- perturb(df, target_df,
                   shake = shake,
                   allowed_dist = 20, # bigger than original
                   temp = temp,
                   x_bounds = c(0, 100),
                   y_bounds = c(0, 100))
    if(is_error_still_ok(df, df2, decimals = 1)){
      df <- df2
    }
    i <- i + 1
  }
  df
}
