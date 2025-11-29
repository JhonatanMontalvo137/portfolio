hotel_bookings <- read.csv("C:/Users/jhona/Downloads/hotel_bookings(3).csv")
#Scatterplot inicial
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

#Bar chart con hotel vs market_segment
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))


#Faceting para comparar cada segmento
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)

library(tidyverse)

#Crear dataset filtrado (versión 1)

#City Hotel + Online TA
onlineta_city_hotels <- filter(hotel_bookings, 
                               hotel == "City Hotel" & 
                                 market_segment == "Online TA")
view(onlineta_city_hotels)

#Crear dataset filtrado (versión 2 con pipes)
onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel == "City Hotel") %>%
  filter(market_segment == "Online TA")

View(onlineta_city_hotels_v2)

#Crear scatterplot con el dataset filtrado
ggplot(data = onlineta_city_hotels_v2) +
  geom_point(mapping = aes(x = lead_time, y = children))











