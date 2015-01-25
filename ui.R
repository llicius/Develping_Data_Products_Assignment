library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Tax calculator"),
  sidebarPanel(
    textInput('text', 'Country', value='The Netherlands'),
    numericInput('YearlySalary', 'Yearly Salary (Eu)', 45000),
    numericInput('Tax', 'Tax (%)', 42),
    h5('')
    ),
  mainPanel(
    h4('Monthly Bruto Salary (EU)'),
    textOutput("Month"),
    h4('Monthly Net Salary - No 30% Rule (EU)'),
    textOutput("MonthNet"),
    h4('Monthly Net Salary - With 30% Rule (EU)'),
    textOutput("Net"),
    br(),
    h4('Instructions'),
    helpText("This application is for foreign qualified workers in The Netherlands to calculate their net montly salary when they apply for the 30% ruling"),
    code("Yearly Salary"),
    helpText("Enter the bruto yearly salary in euros"),
    code("Tax"),
    helpText("Enter the percentage of tax that is deduced from your salary")
  )
))