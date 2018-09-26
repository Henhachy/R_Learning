age <- c(66,58,75,72,56,63,40)
bmi <- c(23,28,26,27,24,24,30)
cpd <- c(36,36,40,24,40,32,40)
emp <- c(0,1,1,0,1,0,1)
fam.lung.trend <- c(0,2,0,2,0,2,0)
female <- c(0,1,0,1,0,1,0)
smkyears <- c(43,37,45,42,29,19,48)
qtyears <- c(NA,NA,9,6,6,NA,7)
race <- c(0,1,2,2,3,2,3)
edu6 <- c(3,5,4,5,5,3,5)
years <- 2

persons <- cbind(age,
                 female,
                 smkyears,
                 qtyears,
                 cpd,
                 race,
                 emp,
                 fam.lung.trend,
                 bmi,
                 edu6)

persons_predictions <- lcrisk(persons,years)
plot(person(), years)
persons_predictions