library(shiny)
library(datasets)

mpgData <- mtcars

mpgData$am <- factor(mpgData$am, labels = c("Automatic", "Manual"))

shinyServer(function(input, output) {
  
  regressionEquation <- reactive({
    paste("Miles per gallon  explained using : ", input$variable)
  })

  regression <- reactive({
    lm(as.formula(x()), data=mpgData)
  })
    
  x <- reactive({
    paste("mpg ~", input$variable)
  })

  output$caption <- renderText({
    regressionEquation()
  })
    
  output$mpgPlot <- renderPlot({
    with(mpgData, {
      plot(as.formula(x()))
      abline(regression(), col=2)
    })
  })
})