library(shiny)

# Define UI for application that picks a restaurant
shinyUI(fluidPage(

  # Application title
  titlePanel("Lunch Pickr"),

  # Sidebar with pick button
  sidebarLayout(

       actionButton("pick", "Pick!")
    ,

    # Show the randomly selected restaurant
    mainPanel(
       textOutput("choice")
    )
  )
))
