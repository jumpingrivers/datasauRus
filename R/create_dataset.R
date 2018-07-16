
#' Function doing one round of perturbation
#'
#' @param df current dataset
#' @param initial original dataset
#' @param target name of the target shape
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
perturb <- function(df, initial, target,
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
    lines <- get_points_for_shape(target)
    # calculate how far the point is from the closest one of these
    old_dist <- np.min([DistancePointLine(i_xm, i_ym, l[0][0], l[0][1], l[1][0], l[1][1]) for l in lines])
    new_dist <- np.min([DistancePointLine(xm, ym, l[0][0], l[0][1], l[1][0], l[1][1]) for l in lines])
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

  # ### python
  # while True:


  #
  # # set the new data point, and return the set
  # df['x'][row] = xm
  # df['y'][row] = ym
  # return df

}

get_points_for_shape <- function(target){
  # these were hard-coded, we don't want that,
  # we want to extract lines from an image
  # therefore not a too complicated image!
  # or maybe tweak the code so as not to have to use lines.
  return(lines)
}

# This function calculates the minimum distance between a point and a line, used
# to determine if the points are getting closer to the target

DistancePointLine <- function(px, py, x1, y1, x2, y2){
  #there must be something easy in R
  # closest distance between a point and a group of points
}

