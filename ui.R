library(shiny)
shinyUI(
  navbarPage("Week 4 programming assignment",
             tabPanel("Regression model",
                      fluidPage(
                        titlePanel("Correlating mpg and car features"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Please choose a variable to be used for regression:",
                                        c("Cylinders in the engine " = "cyl",
                                          "Engine Displacement" = "disp",
                                          "Engine break horsepower" = "hp",
                                          "Car Weight " = "wt"
                                        ))
                            
                          ),
                          mainPanel(
                            h3(textOutput("caption")),
                            plotOutput("mpgPlot")
                          )
                        )
                      )
             ),
             tabPanel("Readme:",
                      
                      h3("Week 4"),
                      h3("Description:"),
                      h4("Please select variable from the listbox and the regression model should display the relationship , between that variable and mpg ")
             )
  )
)