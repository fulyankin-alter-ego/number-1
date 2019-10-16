library(shiny)

library(ggplot2)

fluidPage(
  titlePanel("Диспансеризация"),
  
  sidebarLayout(
    sidebarPanel(width = 3,
                 fileInput("file1", "Добавьте файл  с данными",
                           accept = c(
                           )
                 ),
                 
                 #  radioButtons("radio", label = h4("Выбрать при необходимости"),
                 #               choices = c('Показать всех' = 1,'Показать тех, кто не прошел всех врачей' = 2,
                 #                           'Показать тех, кто прошел всех врачей' = 3)
                 #               ),
                 
                 selectInput("sex", label = h4("Выбрать пол при необходимости"), 
                             choices = c("Любой", "man", "woman"),
                             selected = 1)
                 
    ),
    
    mainPanel(
      DT::dataTableOutput("contents")
    )
  ),
  
  
  
  fluidRow(
    DT::dataTableOutput("table")
  )
  
)



