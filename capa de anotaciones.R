library(palmerpenguins)

ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species))+
  labs(title = "Palmer Penguins: Body Mass vs Flipper Lenght", subtitle = "Sample of Three Penguin Species",
       caption = "Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220, y=3500, label="The Gentoos are the largest", color="purple",
           fontface="bold", size=4.5, angle=25)
#asigancion de variable a todo el codigo del grafico
p <- ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species))+
  labs(title = "Palmer Penguins: Body Mass vs Flipper Lenght", subtitle = "Sample of Three Penguin Species",
       caption = "Data collected by Dr. Kristen Gorman")
p+annotate("text", x=220, y=3500, label="The Gentoos are the largest")


#funcion ggsave para guardar grafico
ggsave("Palmer Penguins.jpg")