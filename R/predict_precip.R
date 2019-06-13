#' Part of a series of ENSO functions in library(enso)
#'
#' @title Precipitation Prediction
#' @description This function predicts precipitation for a specific location by creating a linear model based on ONI values and historic precipitation values for a specific region
#' @param data Data frame with ONI, temperature and precipitation values by month for a specific location
#' @param ONI Predicted future ONI value
#' @return Precipitation prediction (rainfall in inches)
#'
#' @author Austin Richards and Molly Williams
#'


### Predict Precip


predict_precip = function(data, ONI=0) {
  library(tidyverse)
  model <- lm(PRCP ~ ONI, data = (data))
  prediction <- model$coefficients[1] + ((model$coefficients[2]) * ONI)
#  names(prediction) <- NULL

  if(ONI > 3)
  return("Error, ONI can only be between -3 and 3")

  if(ONI < -3)
  return("Error, ONI can only be between -3 and 3")

  else
  if(prediction < 0)
    return(list("Rainfall Prediction"= 0))
    else
    return(list("Rainfall Prediction" =prediction))
}

