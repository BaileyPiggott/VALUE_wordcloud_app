
library(shiny)

shinyUI(fluidPage(
  
  headerPanel("VALUE Wordclouds"), 
  
  sidebarPanel(
    selectInput("discipline", "Discipline:",
                c("Mechanical" = 1, 
                  "Electrical and Computer" = 2, 
                  "Civil" = 4,
                  "Chemical and Eng Chem" = 5,
                  "Mining" = 7,
                  "Geological" = 8,
                  "Engineering Physics" = 9,
                  "Engineering Math" = 10
                )#end options
    ),#end selectInput
    
    selectInput("level", "Level:", 
                c( "Benchmark 1" = 1,
                   "Milestone 2" = 2,
                   "Milestone 3" = 3,
                   "Capstone 4" = 4
                )# end options
                ) # end select input
    
  ),#end sidebar panel
  
  mainPanel(
    plotOutput("wordcloud")
  )
  
))