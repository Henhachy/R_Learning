# Read in `iris` data
iris <- read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"), 
                 header = FALSE) 

# Print first lines
head(iris)

# Add column names
names(iris) <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species")

iris %>% ggvis(~Petal.Length, ~Petal.Width, fill = ~Species) %>% layer_points()

# Check the result
iris

plot("Sepal.Lenght", "Sepal.Width")

library(ggvis)

# Iris scatter plot
iris %>% ggvis(~Sepal.Length, ~Sepal.Width, fill = ~Species) %>% layer_points()

# Return all `iris` data
iris

# Return first 5 lines of `iris`
head(iris)

# Return structure of `iris`
str(iris)

# Division of `Species`
table(iris$Species) 

# Percentual division of `Species`
round(prop.table(table(iris$Species)) * 100, digits = 1)

# Summary overview of `iris`
summary(iris) 

# Refined summary overview
summary(iris[c("Petal.Width", "Sepal.Width")])

# Build your own `normalize()` function
normalize <- function(x) {
  num <- x - min(x)
  denom <- max(x) - min(x)
  return (num/denom)
}

# Normalize the `iris` data
iris_norm <- as.data.frame(lapply(iris[1:4], normalize))

# Summarize `iris_norm`
summary(iris_norm)

# Compose training set
iris.training <- iris[ind==1, 1:4]

# Inspect training set
head(iris.training)

# Compose test set
iris.test <- iris[ind==2, 1:4]

# Inspect test set
head(iris.test)

# Compose `iris` training labels
iris.trainLabels <- iris[ind==1,5]

# Inspect result
print(iris.trainLabels)

# Compose `iris` test labels
iris.testLabels <- iris[ind==2, 5]

# Inspect result
print(iris.testLabels)
install.packages("keras")