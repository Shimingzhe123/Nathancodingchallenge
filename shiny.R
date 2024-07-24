library(shiny)
library(ggplot2)

people <- readRDS("people.rds")

# Define the User interference
ui <- fluidPage( titlePanel("People Collection"),
                 sidebarLayout(sidebarPanel(
                   textInput("name", "Name"),
                   numericInput("age", "Age", 0),
                   actionButton("add", "Add Person")
                 ),
    mainPanel(
      tableOutput("users_table"),
      plotOutput("age_plot")
    )
  )
)

# Define the server
server <- function(input, output, session) {
  people_data <- reactiveValues(data = people)
  # show of the table
  output$users_table <- renderTable({
    people
  })
  # Do a basic plot
  output$age_plot <- renderPlot({
    ggplot(people, aes(x = name, y = age)) +
      geom_bar(stat = "identity", fill = "skyblue") +
      labs(title = "people group", x = "Name", y = "Age") +
      theme_minimal()
  })
}

# Run the app
shinyApp(ui = ui, server = server)

