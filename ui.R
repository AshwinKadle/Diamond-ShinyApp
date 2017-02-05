#
# Peer-graded Assignment: Course Project: Shiny Application and Reproducible Pitch
# Ashwin Kadle
# UI for Diamond Dataset
library(shiny)
library(markdown)
shinyUI(navbarPage("Diamonds are forever",
                   tabPanel("Select Diamonds",
                            # Sidebar
                            sidebarLayout(
                              sidebarPanel(
                                
                                helpText("Select Diamond Characteristics"),
                                checkboxGroupInput('cut', 'Quality of the cut:', c("Fair"='Fair', "Good"='Good', "Very good" = 'Very Good', "Premium"='Premium',"Ideal"='Ideal'), selected = c('Premium'), inline = TRUE),
                                sliderInput('carat', 'Carat', min=0.2, max=5.1, value=c(0.2,5.1), step=0.1),
                                sliderInput('price', 'Price (in dollars)', min=326, max=18823, value=c(326,18823), step=1),
                                checkboxGroupInput('color', 'Color:', c("D"='D', "E"='E', "F" = 'F', "G"='G',"H"='H',"I"='I','J'='J'), selected = 'D',inline = TRUE),
                                radioButtons('clarity', 'Clarity - measurment of how clear the diamond is:', c("Included"='I1', "Internally Flawless IF"='IF', "Very Very Slightly Included 1" = 'VVS1',"Very Very Slightly Included" = 'VVS2', "Very Slightly Included 2" = 'VS2',"Very Slightly Included 1" = 'VS1',"Slightly Included 1"='S1',"Slightly Included 2"='S2'),selected = c('I1'))
                                
                              ),
                              mainPanel(
                                dataTableOutput('table')
                              ))))
) 