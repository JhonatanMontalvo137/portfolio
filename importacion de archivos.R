library(tidyverse)
bookings_df = read_csv("hotel_bookings.csv")
setwd("/cloud/project/Course 7/Week 3")
bookings_df <- read_csv("hotel_bookings.csv")

#Inspeccionar y limpiar datos
#Ver las primeras filas
head(bookings_df)

#Ver estructura (tipos de columnas)
str(bookings_df)

#Ver solo los nombres de las columnas
colnames(bookings_df)

#Crear un nuevo data frame con solo dos columnas: adr y adults
new_df = select(bookings_df, adr, adults)

#Crear una nueva variable dentro del nuevo data frame
#(Esto NO modifica el original, solo new_df)
new_df <- mutate(new_df, total = adr / adults)
