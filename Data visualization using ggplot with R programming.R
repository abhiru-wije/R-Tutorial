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


#https://www.youtube.com/watch?v=HPJn1CMvtmI&list=PLtL57Fdbwb_C6RS0JtBojTNOMVlgpeJkS


# ggplot tutorial 2
library(tidyverse)
View(mpg)
?mpg

mpg %>%
  filter(hwy < 35) %>%
  ggplot(aes(displ,
             hwy,
             color = drv)) +
  geom_point() +
  geom_smooth(method = lm, se = F) +
  labs(x = " Engine size", 
       y = "MPG on the Highway", 
       title = "Fuel efficiency") +
  theme_bw()
  
# ggplot tutorial 3
library(tidyverse)
?msleep  
view(msleep)
names(msleep)

# single categorical

msleep %>%
  drop_na(vore) %>% #drop NA values in Vore column, if you want to drop all NA
  # you should write drop_na()
  ggplot(aes(vore)) +
  geom_bar(fill = "#529DFE") +
  # coord_flip() + #flip plot other side
  theme_bw() +
  labs(title = "Number of observations per order")
  
# use fct_infreq(vore) to create order which means you can take highest number of bar
# to first place

# single numeric

msleep   %>%
  ggplot(aes(awake)) +
  geom_histogram(binwidth = 2, fill = "#529DFE") +
  theme_bw() +
  labs(x = "Total sleep",
       y = NULL,
       title = "Histogram of to
       tal sleep")
# binwidth is a function with, each bin contains 0-2, 2-4, 4-6 likewise,
# if you enter binwidth = 4 then it contains 0-4,4-8

msleep %>%
  filter(bodywt < 2) %>%
  ggplot(aes(bodywt, brainwt)) +
  geom_point() +
  geom_smooth() +
  labs(x = "Body Weight",
       y = "Brain Weight",
       title = "Brain and body Weight") +
  theme_bw()

# tutorial number : 5
# one categorical and twnumeric_version

library(tidyverse)
view(Orange)
?orange
?Orange

Orange %>%
  filter(Tree != "2") %>%
  ggplot(aes(age, circumference)) +
  geom_point() +
  geom_smooth() +
  theme_bw() +
  labs(title = "Trees age and circumference") +
  facet_wrap(~Tree)

Orange %>%
  filter(Tree != "1" &
           Tree != "2") %>%
  ggplot(aes(age, circumference, color = Tree)) +
  geom_point(size = 2, alpha = 0.5) +
  geom_line(size = 1) +
  theme_bw()+
  labs(title = "Tree age and circumference")

# tutorial no :6

msleep %>%
  drop_na(vore) %>%
  ggplot(aes(vore, sleep_total)) +
  geom_boxplot() +
  theme_bw() +
  coord_flip()

msleep %>%
  drop_na(vore) %>%
  ggplot(aes(sleep_total, fill = vore)) +
  geom_density(alpha = 0.5) +
  facet_wrap(~vore) +
  theme_bw()



