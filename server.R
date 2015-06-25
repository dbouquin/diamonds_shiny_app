library(shiny)

# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)

# Define a server for the Shiny app
shinyServer(function(input, output) {

  # Filter data based on selections
  output$table <- renderDataTable({
    data <- diamonds
    if (input$carat != "All"){
      data <- data[data$carat == input$carat,]
    }
    if (input$cut != "All"){
      data <- data[data$cut == input$cut,]
    }
    if (input$color != "All"){
      data <- data[data$color == input$color,]
    }
    if (input$clarity != "All"){
      data <- data[data$clarity == input$clarity,]
    }
    if (input$depth != "All"){
      data <- data[data$depth == input$depth,]
    }
    if (input$price != "All"){
      data <- data[data$price == input$price,]
    }
    data
  })

})
