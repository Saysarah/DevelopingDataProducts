library(shiny)
library(ggplot2)

# this app construct plots data from the data(diamonds) dataset in R
# The user selects desired inputs and outputs
# Finally the user inputs the desired sample size of points to use for the plot

data(diamonds)
diaDataset <- diamonds 

shinyUI(pageWithSidebar(
    
    headerPanel("Diamonds Dataset Attributes"),
    
    sidebarPanel(
        h4('Menu Bar'),
        textInput(inputId="name1", label = "Please type in your username"),
        actionButton("goButton", "Enter"),
        h4('Select attributes to plot'),
        selectInput('input', 'Input', names(diaDataset)),
        selectInput('output', 'Output', names(diaDataset), names(diaDataset)[[2]]),
        checkboxInput('smooth', 'include smooth fit curve'),
        numericInput('sampleSize2', ' Sample Size please input a number 1000 and 53940', 53940 , min=1000, max=nrow(diaDataset), step=1), 
        actionButton("goButton2", "Enter")
           
    ),
    
    mainPanel(
        p('Information from the diamonds dataset in R'),
        textOutput('name1'),
        textOutput('sampleSize2'),
        plotOutput('diamondPlot')
    )
))

## deployApp()