## Julian Fandino
## 14-02-2024


rm(list = ls())
require(pacman)
p_load(rio,skimr,janitor)
install.packages("rio")
install.packages("skimr")
install.packages("janitor")
p_load(rio,skimr,janitor)

##directorio de trabajo
list.files()
setwd("Desktop/R/")

install.packages("jsonlite")

##
data <- import("poblacion magdalena.rds")
da <- import("https://www.datos.gov.co/resource/pzbk-7m7r.json")
skim(data)

##exportar
export(x = da,file = "output/transmi.dta")
export(x = da,file = "output/transmi.rds")

##importar una lista

list.files("input/")
list.files("input/", full.names =T)
