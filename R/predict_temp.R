#' Part of a series of ENSO functions in library(enso)
#'
#' @title Temperature Prediction
#' @description This function predicts temperature for a specific location by creating a linear model based on Ocean Nino Index (ONI) values
#' @param data Data frame with ONI, temperature and precipitation values by month for a specific location
#' @param ONI Predicted future ONI value
#' @param month Month for which you are predicting temperature
#' @return Temperature prediction (celsius)
#'
#' @author Austin Richards and Molly Williams
#'


### Predict Temp



predict_temp = function(data, month, ONI=0) {
  model <- lm(TAVG ~ month + ONI, data = (data))
  prediction <- model$coefficients[1] + model$coefficients[month] + (ONI * model$coefficients[13])
  prediction_jan <- model$coefficients[1] + (ONI * model$coefficients[13])

  '%!in%' <- function(x,y)!('%in%'(x,y))

  possible_months <- c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")


  names(prediction) <- NULL
  names(prediction_jan) <- NULL

  if(ONI > 3)
    return("Error, ONI can only be between -3 and 3")

  if(ONI < -3)
    return("Error, ONI can only be between -3 and 3")

  else
    if(month %!in% possible_months)
      return(list("Error, month must be between 1 and 12"))

  else
    if(prediction < 0)
      return(list("Monthly Average Temperature Prediction"= 0))
  else
    if(month == '1')
      return(list("Monthly Average Temperature Prediction" =prediction_jan))
  else
    return(list("Monthly Average Temperature Prediction" =prediction))
}

