library(shiny)
ui <- fluidPage(
  titlePanel("Standard Normal Probabilities"),
  h3("Input a z score below to calculate its correponding p-value."),
  sidebarLayout(
    sidebarPanel(
      numericInput("z")),
    mainPanel(textOutput("p-value"))
      
      
    )
  )
  
server <- function(input, output) {
  output$p-value <- reactive({pnorm(input$z)})
}

shinyApp(ui = ui, server = server)