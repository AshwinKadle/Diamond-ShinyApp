#
# Peer-graded Assignment: Course Project: Shiny Application and Reproducible Pitch
# Ashwin Kadle
# Server for Diamond Dataset filter Table
#

library(shiny)
library(ggplot2)
library(dplyr)
# Filter the dataset 
diamonds <- diamonds

shinyServer(function(input, output) {
  
  # Show the diamonds that correspond to the filters
  output$table <- renderDataTable({
    carat_seq <- seq(from = input$carat[1], to = input$carat[2], by = 0.1)
    price_seq <- seq(from = input$price[1], to = input$price[2], by = 1)
    data <- filter(diamonds, carat %in% carat_seq, price %in% price_seq, cut %in% input$cut, color %in% input$color, clarity %in% input$clarity)
    data <- arrange(data, price)
    
  }, options = list(lengthMenu = c(5, 10, 20), pageLength = 10))
})