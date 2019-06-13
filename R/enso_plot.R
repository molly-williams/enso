#' ONI Functions
#' @title Impacts of ENSO 
#' @description This functions produces a figure of ONI values over time (1950-)
#' @param data Data frame with most recent ENSO values 
#' @param graph_result if TRUE, output a graphical representation of ENSO values over time
#' @return Geom_smooth plot
#'
#' @author Austin Richards and Molly Williams


## Summary function


### Graph function

enso_plot = function(data) {
  plot <- ggplot(enso_data, aes(x=year, y=ONI)) +
    geom_smooth() +
    theme_bw() +
    ylab("Oceanic Nino Index (ONI)") +
    xlab("Year") +
    labs(title = "Historic Cold & Warm Episodes",
         subtitle = "Monthly Data, Source: NOAA ESRL") 
  
  
  return(plot)
  
  
}
