View(cars)
my_age <- 12
your_age <- 14
sum(my_age, your_age)
plot(cars)
hist(cars$dist)
summary(cars)
summary(cars$speed)
cars[1:6, 1]
cars[1:6, 1:2]
new_data <- c(1, 2, 3, 5, 6, 9, NA, 16, NaN)
mean(new_data)
mean(new_data, na.rm = TRUE)
sum(new_data)
sum(new_data, na.rm = TRUE)
sum(new_data)
sum(new_data, na.rm = TRUE)
d <- seq(1,5, by = 2)
d
d <- seq(1,10, by = 2)
d
qty <- c(1,2,3,4,5)
price <- c(10,11,12,13,14)
func1 <- 2 * qty * price
func1
a <- 1:5
b <- 4:7
intersect(a, b)
union(a, b)
setdiff(a,b)
setdiff(b,a)
union(a,b)
setequal(a,b)
a %in% b
