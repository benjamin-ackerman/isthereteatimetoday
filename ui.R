library(shiny)

shinyUI(fluidPage(
  h1(textOutput("answer"),align="center"),
  div(img(src = "img.gif"), style="text-align: center;"),
  h2(textOutput("subtitle"), align="center")
))

