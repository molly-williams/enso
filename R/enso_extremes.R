#' Part of a series of ENSO functions in library(enso)
#'
#' @title Impacts of ENSO
#' @description This function finds maximum/minimum of historical ENSO data (1950-)
#' @param data Data frame with most recent ENSO values
#' @return Max and min values
#'
#' @author Austin Richards and Molly Williams
#'
#'


## Summary function

### Find max and min of all data 1950-present

enso_extremes = function(data) {

  enso_max <- max(data$ONI)
  enso_min <- min(data$ONI)

  return(list("Maximum" = enso_max, "Minimum" = enso_min))

}

