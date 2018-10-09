library(shiny)

# Define server logic required to randomly select restaurant
shinyServer(function(input, output) {

  observeEvent(input$pick, {

          restuarants_list <- c("Zaxby's", "Chipotle", "Capital Ale House",
                                "Five Guys", "Noodles & Co", "Firehouse",
                                "Mama Cicina", "Taziki's", "Hurley's",
                                "Boychicks Deli", "Thai Flavor Food",
                                "Rico's Mexican Grill")

          choice <- sample(restuarants_list, 1, replace = TRUE)
          output$choice <- renderText({
                  choice
          })
  })


})
