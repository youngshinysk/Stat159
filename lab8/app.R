library(babynames)
library(ggplot2)
library(stringr)
library(shiny)

adv = read.csv('advertising.csv')

ui <- fluidPage(
  selectInput(inputId = "feature",
              label = "Choose a feature",
              choices = c('TV', 'Radio', 'Newspaper')),
  plotOutput(outputId = "plot")
)

server <- function(input, output) {
  output$plot <- renderPlot({
    plot(adv$Sales, adv[,input$feature], xlab = input$feature, ylab = 'Sales', main = paste('Sales vs.', input$feature))
  })
}

shinyApp(server = server, ui = ui)