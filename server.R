
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  if(weekdays(Sys.Date()) == "Wednesday"){
    output$answer <- renderText("YES!")
    output$subtitle <- renderText("3 pm in the Genome Cafe, see you there!")
  }
  else if(weekdays(Sys.Date()) == "Tuesday"){
    output$answer <- renderText("NO")
    output$subtitle <- renderText("But check back tomorrow!!")
  }
  else{
    output$answer <- renderText("NO")
    output$subtitle <- renderText("Try again on Wednesday :)")
  }
})
