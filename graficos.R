quartet %>%
  group_by(set) %>%
  summarise(mean(x),sd(x),mean(y),sd(y),cor(x,y))