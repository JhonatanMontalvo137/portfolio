setwd("C:/Users/jhona/Downloads")
hotel_bookings = read_csv("hotel_bookings(3).csv")

#Ordenar por lead_time (pero falta el nombre de la columna)
arrange(hotel_bookings, lead_time)
#Orden descendente
arrange(hotel_bookings, desc(lead_time))
#Crear un nuevo data frame ordenado
hotel_bookings_v2 <- arrange(hotel_bookings, desc(lead_time))
head(hotel_bookings_v2)
#Máximo y mínimo
max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)
#Promedio general del lead_time
mean(hotel_bookings$lead_time)

#Promedio en la versión v2
mean(hotel_bookings_v2$lead_time)
#Filtrar solo hoteles de ciudad
hotel_bookings_city <- 
  filter(hotel_bookings, hotel == "City Hotel")
head(hotel_bookings_city)
#Promedio del lead time en city hotels
mean(hotel_bookings_city$lead_time)
#Agrupar y resumir datos (city vs resort)
hotel_summary <- 
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(
    average_lead_time = mean(lead_time),
    min_lead_time = min(lead_time),
    max_lead_time = max(lead_time)
  )
head(hotel_summary)


