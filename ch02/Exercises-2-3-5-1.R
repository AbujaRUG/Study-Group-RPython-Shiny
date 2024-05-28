library(shiny)

ui <- fluidPage(
  # renderPrint(summary(mtcars))
  verbatimTextOutput(outputId = "vbSummary"),
  # renderText("Good morning!")
  textOutput(outputId = "txtGreetings"),
  # renderPrint(t.test(1:5, 2:6))
  verbatimTextOutput(outputId = "vbTtest"),
  # renderText(str(lm(mpg ~ wt, data = mtcars)))
  verbatimTextOutput(outputId = "txtMtCars")
)

server <- function(input, output, session) {
  output$vbSummary <- renderPrint(summary(mtcars))
  
  output$txtGreetings <- renderText("Good morning!")
  
  output$vbTtest <- renderPrint(t.test(1:5, 2:6))
  
  output$txtMtCars <- renderPrint(str(lm(mpg ~ wt, data = mtcars)))
}

shinyApp(ui, server)