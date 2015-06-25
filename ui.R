library(shiny)

# Load the ggplot2 package which provides
# the 'diamonds' dataset.
library(ggplot2)

# Define the overall UI
shinyUI(
  fluidPage(
    titlePanel("Daina's Diamond Browser"),

    # Create a new Row in the UI for selectInputs
    fluidRow(
      column(4,
          selectInput("carat",
                      "Carat:",
                      c("All",
                        unique(as.character(diamonds$carat))))
      ),
      column(4,
          selectInput("cut",
                      "Cut:",
                      c("All",
                        unique(as.character(diamonds$cut))))
      ),
      column(4,
          selectInput("clarity",
                      "Clarity:",
                      c("All",
                        unique(as.character(diamonds$clarity))))
      ),
      column(4,
          selectInput("depth",
                      "Depth:",
                      c("All",
                        unique(as.character(diamonds$depth))))
      ),
      column(4,
          selectInput("price",
                      "Price:",
                      c("All",
                        unique(as.character(diamonds$price))))
      ),
      column(4,
          selectInput("color",
                      "Color:",
                      c("All",
                        unique(as.character(diamonds$color))))
      )
    ),
    # Create a new row for the table.
    fluidRow(
      dataTableOutput(outputId="table")
    )
  )
)
