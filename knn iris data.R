data("iris")
str(iris)
table(iris$Species)
a <- c(2,3,4,6,2)
a
set.seed(9850)
Normalize <- function(x){
  +return((x-- max(x))/(max(x)-min(x)))
}
normalize(c(2,3,4,5,6))
iris_n <- as.data.frame(lapply(iris[,c(1,2,3,4)],normalize))
str(iris_n)
summary(iris_n)
train <- iris_n[1:129,]
test <- iris_n[130:150,]
train_target <- iris[1:129,5]
test_target <- iris[130:150,5]
install.packages("class")
library(class)
kn <- knn(train = train,test = test,cl=train_target,k=13)
table(test_target,kn)
