data.frame("mtcars")
library(ggplot2)
shinyServer(
  function(input,output) {
    x<- reactive(input$x)
    y<- reactive(input$y)
    output$DataVisualisation <- renderPlot({
      
         qplot(mtcars[,x()],mtcars[,y()])
    }
    )
  }
)