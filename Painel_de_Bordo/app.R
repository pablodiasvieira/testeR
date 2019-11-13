
library(shinydashboard)
library(shiny)
ui <- dashboardPage(
  dashboardHeader(title = "Painel de Bordo - SESAU"),
  dashboardSidebar(
  sidebarMenu(
    menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
    menuItem("Sociedade", tabName = "sociedade", icon = icon("user")),
    menuItem("Processo", tabName = "processo", icon = icon("cogs")),
    menuItem("Gest?o", tabName = "gestao", icon = icon("dashboard")),
    menuItem("Financeiro", tabName = "financeiro", icon = icon("dashboard")),
    menuItem("Inserir dados", tabName = "dados", icon = icon("th"))
  )),
  dashboardBody(
    tabItems(
      tabItem(tabName = "dashboard",
              h2("Aqui ser?o inseridos os 3 melhores e os 3 piores indicadores")),
      
      tabItem(tabName = "sociedade",
              fluidRow(
                box(title = "Resultado para Sociedade",
                  valueBoxOutput("ind01"),
                    valueBox(2, "Indicador 2"),
                    valueBox(3, "Indicador 3"),
                    valueBox(4, "Indicador 4"),
                    valueBox(5, "Indicador 5"),
                    valueBox(6, "Indicador 6"),
                    valueBox(7, "Indicador 7"),
                    valueBox(8, "Indicador 8"),
                    valueBox(9, "Indicador 9")))),
      tabItem(tabName = "processo",
              fluidRow(
                box( title = "Perspectiva de Processo", 
                  valueBox(10, "Indicador 10"),
                     valueBox(11, "Indicador 11"),
                     valueBox(12, "Indicador 12"),
                     valueBox(13, "Indicador 13")))),
      tabItem(tabName = "gestao",
              fluidRow(
                box(title = "Perspectiva de Gest?o",
                  valueBox(14, "Indicador 14"),
                    valueBox(15, "Indicador 15"),
                    valueBox(16, "Indicador 16"),
                    valueBox(17, "Indicador 17"),
                    valueBox(18, "Indicador 18"),
                    valueBox(19, "Indicador 19"),
                    valueBox(20, "Indicador 20"),
                    valueBox(21, "Indicador 21"),
                    valueBox(22, "Indicador 22")))),
      tabItem(tabName = "financeiro",
              fluidRow(
                box(title = "Perspectiva Financeira",
                  valueBox(23, "Indicador 23"),
                    valueBox(24, "Indicador 24"),
                    valueBox(25, "Indicador 25")))),
      
    tabItem(tabName = "dados",
            h2("Aqui ser?o inseridos os dados do dashboard"))
    )
    )
    
  )


server <- function(input, output) {
  output$mtcars <- renderTable(head(mtcars),
 
output$ind01 <- renderValueBox({
   valueBox(
     paste0(25, "%"), "Indicador", icon = icon("list"),
     color = "purple"
   )
 })                               
                               
                               
)}
shinyApp(ui, server)
