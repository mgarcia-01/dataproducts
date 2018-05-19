library(shiny)

#if (interactive()) 
#  {

ui <- #fluidPage(
  pageWithSidebar(
    textInput("filepath", "Enter file path with name", placeholder = NULL)
    ,downloadButton("textInput", "Download")
    ,mainPanel(tableOutput("Table"))
  )
#}


server <- function(input, output) {
  output$table <- renderTable({
    datasetInput()
  })
  
  output$downloadData <- downloadHandler(
    filename = function() { paste(input$dataset, '.csv', sep='')},
    content = function(file) {
      write.csv(datasetInput(), file)
    }
  )
}



structureidCount <- aggregate(myCurrentData$structureId, c(myCurrentData$structureId), data = myCurrentData, function(x) length(unique(x))