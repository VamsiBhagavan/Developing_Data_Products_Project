data.frame("mtcars")
library(ggplot2)
shinyServer(
  function(input,output) {
    output$DataVisualisation <- renderPlot({
      x <-input$x
      y <- input$y
         qplot(mtcars[,x],mtcars[,y])
    }
    )
  }
)