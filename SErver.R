server <- function(input, output){
  
  
  output$cab_plot<- renderPlot({
    ggplot(cba_dataset, aes(x=cba_dataset[[input$features]], y= cba_dataset$S.NO)) + geom_point() + geom_smooth()
    
  })
  
  output$cab1_plot<- renderPlot({
    ggplot(cba_dataset, aes(x=cba_dataset[[input$features1]], y= cba_dataset[[input$features2]])) + geom_point() + geom_smooth()
    
  })
  
  output$dtree <- renderPlot({
    
    library(rpart)
    library(rpart.plot)
    tree <- rpart(input$f1 ~ input$f2 + input$f3, dtree)
    a<- data.frame(input$f2 == input$f4, input$f3 == input$f5)
    result <- predict(tree, a)
    print(result)
    rpart.plot(tree)
    
    
  })
  
}