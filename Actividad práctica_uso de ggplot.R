hotel_bookings <- read.csv("C:/Users/jhona/Downloads/hotel_bookings(3).csv")
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))


ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))
s