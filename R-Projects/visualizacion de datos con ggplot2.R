#graficos de dispersion

ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))


ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species))


ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape=species, color=species))

ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha=species))

ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), color="purple")

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))+geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))


ggplot(data = penguins) +
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))

#graficos de barras

ggplot(data = diamonds)+geom_bar(mapping = aes(x=cut))

ggplot(data = diamonds)+geom_bar(mapping = aes(x=cut, colour = cut))

ggplot(data = diamonds)+geom_bar(mapping = aes(x=cut, fill = cut))

ggplot(data = diamonds)+geom_bar(mapping = aes(x=cut, fill = clarity))

#suavizado
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point() +
  geom_smooth()
#Suavizado Loess
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g))+ 
  geom_point() +       
  geom_smooth(method="loess")
#Suavizado Gam
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point() +        
  geom_smooth(method="gam", 
              formula = y ~s(x))

#facetas
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color=species))+
  facet_wrap(~species)

ggplot(data = diamonds)+geom_bar(mapping = aes(x=color, fill = cut))+facet_wrap(~cut)

ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species))+facet_grid(sex~species)