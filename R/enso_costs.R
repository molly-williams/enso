#' Part of a series of ENSO functions in library(enso)
#'
#' @title Natural Disaster Cost Prediction
#' @description This function predicts the natural disaster costs for a specific location based on monthly Ocean Nino Index (ONI) values, risk factor, and GDP
#' @param ONI Predicted future ONI value
#' @param risk Risk value
#' @param GDP Gross Domestic Product of country of interest
#' @return Expected One Year Increase in Natural Disaster Costs Attributed to El Nino (Billions of USD)
#'
#' @author Austin Richards and Molly Williams
#'



### Predict Costs

enso_costs <- function(ONI, risk =.811, gdp =21.9) {
  damages <- (ONI*.06) + risk * gdp

  if(ONI > 3)
    return("Error, ONI can only be between -3 and 3")

  if(ONI < -3)
    return("Error, ONI can only be between -3 and 3")

  else
    if(ONI <= 0.5)
      return("No Increased Risk of Natural Disaster Costs")
  else
    return(list("Expected One Year Increase in Natural Disaster Costs Attributed to El Nino in Billions of USD" =damages))
}


