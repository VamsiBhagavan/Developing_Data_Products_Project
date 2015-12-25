data.frame('mtcars')
library(ggplot2)
shinyUI(pageWithSidebar(
  headerPanel("Example plot"),
  sidebarPanel(
    selectInput("x","X-axis",names(mtcars), selected = "cyl"),
    selectInput("y","Y-axis",names(mtcars), selected = "mpg"),
    submitButton('Submit')
  ),
  mainPanel(
    h2("Basic Data Visualisation"),
    p('The mtcars data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models)'),
    p('Below is the chart that shows the variation between different variables'),
    p('Choose the variables from the left panel you want to see the relationship and click SUBMIT'),
p('Variable definition is shown below'),   
p('
      
[, 1]	 mpg	 Miles/(US) gallon
      [, 2]	 cyl	 Number of cylinders
      [, 3]	 disp	 Displacement (cu.in.)
      [, 4]	 hp	 Gross horsepower
      [, 5]	 drat	 Rear axle ratio
      [, 6]	 wt	 Weight (1000 lbs)
      [, 7]	 qsec	 1/4 mile time
      [, 8]	 vs	 V/S
      [, 9]	 am	 Transmission (0 = automatic, 1 = manual)
      [,10]	 gear	 Number of forward gears
      [,11]	 carb	 Number of carburetors'),
    
   
    plotOutput('DataVisualisation')
    
  )
)
)