library(tidyverse)
data()
?BOD
# ggplot(data = BOD,
#        mapping = aes(x = Time,
#                      y = demand)) +
#   geom_point(size = 5,) + 
#   geom_line(color = "red")

ggplot(BOD, aes(Time, demand)) +
  geom_point(size = 3) +
  geom_line(color = "red")

data()
co2
view(CO2)

CO2 %>% 
  ggplot(aes(conc, uptake, 
             color = Treatment)) +
  geom_point(size = 3, alpha = 0.5) +
  geom_smooth(method = lm, se  = F) +
  facet_wrap(~Type) +
  labs(title = "Concentration of CO2") +
  theme_bw()

CO2 %>% 
  ggplot(aes(Treatment, uptake)) +
  geom_boxplot() +
  geom_point(aes(size = conc, 
                 color = Plant),
             alpha = 1) +
  coord_flip() +
  facet_wrap(~Type) +
  theme_bw() +
  labs(title = "Child vs Nonchild")

view(mpg)

mpg %>%
  filter(cty < 25) %>%
  ggplot(aes(manufacturer, displ)) +
  geom_point(aes(color = year,
                 size = cty),
             alpha = 0.5) +
  geom_smooth(method = lm) +
  facet_wrap(~year, nrow = 1) +
  labs(x = "Engine size",
       y = "MPG in the city",
       title = "Fuel efficiency") +
  theme_bw()


https://www.youtube.com/watch?v=HPJn1CMvtmI&list=PLtL57Fdbwb_C6RS0JtBojTNOMVlgpeJkS