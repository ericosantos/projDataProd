library(devtools)

# if (!require("devtools"))
#   install.packages("devtools")
# devtools::install_github("rstudio/shinyapps")
# 
# shinyapps::setAccountInfo(name='ericosantos', token='C3F9E81C9461F2B20CB4A30B9158215F', secret='ajKAtgb0Te6XStqn0vPO3bJJSShsKr0MC4V1mnHH')

install_github('slidify', 'ramnathv')
install_github('slidifyLibraries', 'ramnathv')

library(shiny)
library(shinyapps)
library(slidify)
library(slidifyLibraries)

setwd("C://Users//erico//Escola//Coursera//DataScientist//DataProducts//projDataProd")
author("projDP")

shinyapps::setAccountInfo(name='ericosantos', token='C3F9E81C9461F2B20CB4A30B9158215F', secret='<SECRET>')

