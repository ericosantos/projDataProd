library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Plot the Weibull distribution"),
    sidebarPanel(
        helpText("This app plots density graphs for the Weibull distribution",
                 "allowing the user to change the parameters and see the results on the chart to the right."),
        helpText("The result is always compared to the distribution with shape=5 and scale=1"),
        numericInput("shape", "Enter the shape parameter:", 5),
        numericInput("scale", "Enter the scale parameter:", 1),
        submitButton("Plot"),
        h5("Here is a definition of the ",
            a("Weibull distribution",href="http://en.wikipedia.org/wiki/Weibull_distribution"))
    ),
    mainPanel(
        plotOutput('wPlot')
    )
))