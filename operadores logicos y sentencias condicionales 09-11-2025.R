#operadores logicos y sentencias condicionales
data("airquality")
View(airquality)
airquality[, "Solar.R"] > 150 & airquality[, "Wind"] > 10
#####
#sentencia if
x = 2

if (x > 0) {
  print("x is a positive number")
}
#sentencia if else
x = -7
if (x > 0) {
  print ("x is a positive number")
} else {
  print ("x is either a negative number or zero")
}

if (airquality$Temp[1] < 80) {
  print("It's not a hot day!")
} else {
  print("It's a hot day.")
}

#sentencia else if

x = 0
if (x < 0) {
  print("x is a negative number")
} else if (x == 0) {
  print("x is zero")
} else {
  print("x is a positive number")
}

ozone_level = airquality[1,"Ozone"]
if(is.na(ozone_level)){
  print("Ozone reading is missing for the first day.")
} else if(ozone_level < 30){ 
  print("Low ozone level.")
} else if(ozone_level < 100){ 
  print("Moderate ozone level.")
} else{
  print("High ozone level.")
}
installed.packages("tidyverse")
