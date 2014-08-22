library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
    
    
    output$name1 <- renderText({
                                input$goButton 
                                    
                                    if (input$goButton >= 1){  
                                        return(isolate(paste("Welcome",input$name1,"!")))
                                    } 
                                }) 
    output$sampleSize2 <- renderText({
                                input$goButton2
                                    if (input$goButton == 0){
                                        input$sampleSize2 == nrow(diamonds)
                                    }
                                    if (input$goButton2 >= 1){  
                                        
                                        return(paste("You typed in a sample size of",input$sampleSize2))
                                    } 
                                    
                                }) 
    
    
    diaDataset <- reactive(function() {
        diamonds[sample(nrow(diamonds), input$sampleSize2),]  ## reactive function selectes number of desired samples from data frame
    }) 
    
    output$diamondPlot <- reactivePlot(function() { 
        
        p <- ggplot(diaDataset(), aes_string(x=input$input, y=input$output)) + geom_point(colour = "darkblue")
    
        if (input$smooth)
            p <- p + geom_smooth(colour= "red") ## add loess smoothed fit curve with confidence region
        
        print(p) 
        
    }, height=600)
    
})