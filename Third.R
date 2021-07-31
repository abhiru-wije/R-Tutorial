name <- c("Abhiru", "Kavith", "dinuka", "sunera")
class <- c("11-D", "11-D", "11-D", "11-D")
subject <- c("maths", "science", "sinhala", "english")
marks <- c(54, 89, 85, 94)
df <- data.frame(name, class, subject, marks)
print(df)
str(df)
df[3, "marks"]
df[2, "subject"]
df[1, "name"]
df[2, ]
df[c(3, 4), c("marks", "name")]
rank <- c(4, 2, 3, 1)
df <- data.frame(name, class, subject, marks, rank)
print(df)
df[c(1, 4), c("name", "subject", "rank")]
df[c(2, 3), c("name", "class", 'marks')]
df$name
school <- c("rrck", "drck", "kck", "tck")
df$school <- school
df
sex <- c("M", "M", "M", "M")
df$sex <- sex
df
province <- c("K", "C", "A", "B")
cbind(df, province)
sithum <- data.frame(name = "sithum", class = "11-C", subject = "tamil", marks = "89",  rank = "8", school = "ack", sex = "M")
rbind(df, sithum)
country <- c("sl", "IND", "PAK", "ENG")
df$country <- country
df
sort(df$rank)
sort(df$class)
df
df[order(df$marks, decreasing = FALSE), ]
df[order(df$rank, decreasing = FALSE), ]


vec1 <- c(2,3,1)
print(vec1)
typeof(vec1)
class(vec1)

vec2 <- c(True, False, True)
vec2 <- c(TRUE, FALSE, TRUE)
vec3 <- c("A", "b", "C")
vec1;vec2;vec3
vec4 <- c(TRUE, "A", 1)
print(vec4)
class(vec4)
vec6 <- c(1:20)
print(vec6)

odd_values <- seq(1,20,2)
odd_values

even_values <- seq(2,20,2)
even_values

vec7 <- seq(from = 21, by = 2, length.out = 10)
vec7
vec9 <- seq(from = 24, by = 45, length.out = 10)
vec9


temprature <- c(14, 45, 65, 49)
names(temprature) <- c("Mon", "Tue", "Wed", "Thu")
temprature


vecb <- c(45,46, 79)
names(vecb) <- c("man", "mbn", "mcn")
vecb


v1 <- c(2, 1, 6)
v2 <- c(4, 6, 8)

v1 + v2
v1*v2
v1/v2
sum(v1)
sum(v2)

sd(v1)
sd(v2)
var(v1)
var(v2)
prod(v1)
prod(v2)
max(v1)
min(v1)
max(v2)


v1 > v2
v1 < V2
v1 <v2
v1 == v2

v1 <3

price2 <- seq(550, 560, 584)
names(price2) <- paste0("p", 1:7)

order_detail <- c(10,20,30,NA,50,60,70)
order_detail
names(order_detail) <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
order_detail
order_detail + 10


new_order <- c(100)
order_detail + new_order
update_detail <- order_detail+new_order
update_detail

ft <- order_detail[1:2]
ft
l <- length(order_detail)
l

v1 <- order_detail[(l-1):1]
v1
v2 <- order_detail[(l-7)]
v2
v3 <- order_detail[(l-2):2]
v3
v4 <- order_detail[(l-1):2]
v4
v8 <- order_detail[(l-1):1]
v8
v9 <- order_detail[(l-1):3]
vecr <- is.na(order_detail)
vecr
order_detail < 30
sum(order_detail)
sum(order_detail, na.rm = T)
sum(order_detail, na.rm = F)
sum(order_detail, na.rm = T)


(order_detail %% 3) == 0
(order_detail %% 3)
na.omit(order_detail %% 3)
na.omit(order_detail[(order_detail %% 3) == 0])

mean(order_detail, na.rm = T)
max(order_detail, na.rm = T)
min(order_detail, na.rm = T)
sd(order_detail, na.rm = T)
sqrt(order_detail)

stock1 <- c(450,451,452,453)
stock2 <- c(458, 875, 789, 466)
stock3 <- c(stock1, stock2)
stock3
stock.matrix <- matrix(stock3, byrow = T, nrow = 2)
stock.matrix
names(stock.matrix) <- c("A", "b", "c", "D")
stock.matrix

days <- c('Mon', 'Tue', 'Wed', 'Thu')
st.names <- c('Stock1', 'Stock2')

colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names

stock.matrix

info1 <- c(45, 56, 45, 65)
info2 <- c(1, 0, 0, 1)

info <- c(info1, info2)
info.matrix <- matrix(info, byrow = 2, nrow = 2)

info.matrix

catogory <- c("X", "Y", "Y", "X")
gender <- c("Male", "Female")

colnames(info.matrix) <- catogory
rownames(info.matrix) <- gender

info.matrix

nrow(info.matrix)
ncol(info.matrix)

dim(info)
dim(info.matrix)
rownames(info.matrix)
colnames(info.matrix)
dimnames(info.matrix)


mat1 <- matrix(1:50, byrow = T, nrow = 5)
mat1

5+mat1
2/mat1
5-mat1
mat1 - 5
mat1/2

mat1 ^ 2

mat1+mat1
colsums(info.matrix)
rowsum(info.matrix)
library(pollutant)
beads <- rep(c("red", "blue"), times = c(2,3))
beads
set.seed(1)
beads <- rep(c("red","blue"), times = c(2,3))
beads
mean(beads == "blue")
