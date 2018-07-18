
#' Function doing one round of perturbation
#'
#' @param df current dataset
#' @param initial original dataset
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
perturb <- function(df, initial, target_df,
                    shake = 0.1,
                    allowed_dist = 2,
                    temp = 0,
                    x_bounds = c(0, 100),
                    y_bounds = c(0, 100)){
  # take one row at random, and move one of the points a bit
  row <- sample.int(seq_len(nrow(df)))
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
        ym > y_bounds[0] & ym < y_bounds[1] & xm > x_bounds[0] & xm < x_bounds[1]){
      cond <- FALSE
    }
  }
  # set the new data point, and return the set
  df[row, "x"] <- xm
  df[row, "y"] <- ym
  return(df)

}


# This function calculates the minimum distance between a point and a line, used
# to determine if the points are getting closer to the target

get_distance_to_target <- function(px, py, target_df){
  distances <- purrr::map2_dbl(target_df$x, target_df$y,
                               get_distance,
                               x2 = px, x1 = py)
  min(distances)
}

get_distance <- function(x1, y1, x2, y2){
  sqrt((x1-x2)^2 + (y1-y2)^2)
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

  return (any(er > 10^(-decimals)))
}


