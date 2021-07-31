library("tidyverse")
require(tidyverse)

head(starwars)
view(starwars)

starwars %>% select(gender, mass, height, species) %>%
  filter(species == "Human") %>%
  na.omit() %>%
  mutate(height = height/100) %>%
  mutate(BMI = mass/height^2) %>%
  group_by(gender) %>%
  summarise(mean(BMI))

starwars %>% 
  select(sex, mass, height, species) %>%
  filter(species == "Human") %>%
  na.omit() %>%
  mutate(height = height/100) %>%
  mutate(BMI = mass/ height^2) %>%
  group_by(sex) %>%
  summarise(mean(BMI))
