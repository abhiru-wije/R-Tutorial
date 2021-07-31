
my_vector <- c(1, 2, 3, 4, 5)
my_vector
my_vector[2]
my_vector[c(1,3)]
my_vector[c(1:4)]
list_one <- list(141, 14+4i)
class(list_one)
list_one
list_one[1]
list_one[1:2]
list_two <- list(c(1,2,3), c("A","b","c"))
list_two
list_two[[2]][2]
list_two[[1]][3]
my_matrix <- matrix(c(1:8), nrow = 2)
my_matrix
my_matrix <- matrix(c(1:8), nrow = 2, ncol = 4)
my_matrix
my_matrix[1,2]
v1 <- c(1,2)
v2 <- c("a", "A")
array(data = c(v1,v2), dim = c(2,2)) -> arr1
arr1
arr1[2,2]
arr1[2,2,2]
rep(c("x","y","z"),5) -> my_data
my_data
as.factor(my_data) -> my_date
my_date
dataframe <- data.frame(fruitName = c("apple","mango","grapes"), fruitCost = c(24,15,56))
View(dataframe)
dataframe[2]
dataframe$fruitName
