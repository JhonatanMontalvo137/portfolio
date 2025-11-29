##Crea un vector de nombres (pon cuatro nombres):
names = c("Ana", "Luis", "Marco", "Elena")

##Crea un vector de edades (cuatro números):
age <- c(23, 30, 19, 27)

##Crea el data frame people combinando ambos vectores:
people = data.frame(names, age)

##Vista rápida:
head(people)

#Estructura interna:

str(people)

#Resumen en formato horizontal:
glimpse(people)

#Ver los nombres de las columnas:
colnames(people)

#Crear una nueva columna con mutate():
#Ejemplo: edad dentro de 20 años.
mutate(people, age_in_20 = age + 20)
data()
data("mtcars")
mtcars
