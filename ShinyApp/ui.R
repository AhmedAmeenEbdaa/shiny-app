#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput('xcol', 'X Variable', names(iris)),
            selectInput('ycol', 'Y Variable', names(iris),
                        selected = names(iris)[[2]]),
            numericInput('clusters', 'Cluster count', 3,
                         min = 1, max = 9)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput('plot1')
        )
    )
))
