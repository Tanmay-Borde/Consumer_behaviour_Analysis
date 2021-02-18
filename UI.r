library(shiny)
install.packages("shinydashboard")
library(shinydashboard)
library(ggplot2)

ui <- dashboardPage(
                     
                     dashboardHeader(title = "CAB"),
                     dashboardSidebar(
                       sidebarMenu(
                         menuItem("consumer analysis", tabName = "cab"), 
                         menuSubItem("correlation analysis", tabName = "cab1"),
                         menuItem("dtree", tabName = "dtree")
                         
                       )
                        
                        
                         
                         
                       
                     ),
                     dashboardBody(
                       
                       tabItems(
                         tabItem( tabName = "cab",
                                  h1(" scatter "),
                                  
                                  fluidRow(
                                    box(plotOutput("cab_plot"), width = 8),
                                    box(
                                      selectInput("features", "selectInput:", c("age_group","gender","profession","smartphone_brand", "apps","Battery","Camera","Processor", "Design", "Longevity", "Compatibility", "Display", "degrades", "battery_hrs", "battery_capacity", "buy_yoy", "stop_bat_deg", "carry_powerbank", "pb_inconvenience")), width = 4
                                    )
                                  
                                  
                         )
                         ),
                         
                         tabItem(
                           
                           tabName = "cab1",
                           
                           fluidRow(
                             box(plotOutput("cab1_plot"), width = 8),
                             box(
                               selectInput("features1", "Xaxis", c("age_group","gender","profession","smartphone_brand", "apps","Battery","Camera","Processor", "Design", "Longevity", "Compatibility", "Display", "degrades", "battery_hrs", "battery_capacity", "buy_yoy", "stop_bat_deg", "carry_powerbank", "pb_inconvenience")), width = 4
                             ),
                             box(
                               selectInput("features2", "Yaxis", c("age_group","gender","profession","smartphone_brand", "apps","Battery","Camera","Processor", "Design", "Longevity", "Compatibility", "Display", "degrades", "battery_hrs", "battery_capacity", "buy_yoy", "stop_bat_deg", "carry_powerbank", "pb_inconvenience")), width = 4
                             )
                           
                         )
                        
                         
                      ),
                         
                       
                      
                      tabItem(
                        
                        tabName = "dtree",
                        fluidRow(
                          
                          box(plotOutput("dtree"), width = 8),
                          
                          box(
                            
                            selectInput("f1", "1", c("Battery", "Camera", "Processor", "Design", "Longevity", "Compatibility", "Display", "degrades", "battery_hrs", "battery_capacity"))
                          ),
                          
                          box(
                            
                            selectInput("f2", "2", c("Battery", "Camera", "Processor", "Design", "Longevity", "Compatibility", "Display", "degrades", "battery_hrs", "battery_capacity"))
                          ),
                          
                          box(
                            
                            selectInput("f3", "3", c("Battery", "Camera", "Processor", "Design", "Longevity", "Compatibility", "Display", "degrades", "battery_hrs", "battery_capacity"))
                          ),
                          
                          box(
                            
                            selectInput("f4", "4", c("Yes", "No"))
                          ),
                          
                          box(
                            
                            selectInput("f5", "5", c("Yes", "No"))
                          )
                          
                          
                          
                          
                          
                          
                          
                        )
                        
                        
                        
                        
                      )  
                         
                         
                         
                         
                         
                  
                     )
)

)