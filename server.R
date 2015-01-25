library(shiny)
shinyServer(
  function(input, output){
    output$Month <- renderText({ calculateMonth(input$YearlySalary) })
    output$MonthNet <- renderText({ calculateMonthNet(input$Tax, input$YearlySalary) })
    output$Net <- renderText({ calculateNet(input$Tax, input$YearlySalary) })
    }
)


calculateMonth <- function (YearlySalary) 
{
  result <- (YearlySalary/12)
  return(round(result, digits = 2))
}

calculateMonthNet <- function (Tax, YearlySalary) 
{
  result <- ((YearlySalary/12)-((YearlySalary/12)*(Tax/100)))
  return(round(result, digits = 2))
}

calculateNet <- function (Tax, YearlySalary) 
{
  result <- ((YearlySalary- ((YearlySalary * 0.7))*(Tax/100))/12)
  return(round(result, digits = 2))
}

