
##importowanie danych z Tablicy danych !!!!
speed = amis[,c(2)]
d = amis[,c(3,4)]

## Sumowanie wartości tablicy 
sum.speed <- sum(speed)
warning = amis[, c(4)]

sum.warning <- sum(warning)
is.numeric(sum.warning)
is.numeric(speed)

## Wczytywanie danych z dysku
data.file <- file.path('Downloads', 'amis.csv')
## przypisanie danych do zmienej speed warnig 
speed.warnig <- read.csv(data.file, header = TRUE, sep = ',')
##Analiza danych na podstawie danych numerycznych 
speed.warnig$speed <- speed.warnig$speed 
speed.warnig$warning <- speed.warnig$warning * 0.432
speed.warnig$period <- gsub("1", "Cis", speed.warnig$period)
speed.warnig$period <- gsub("2", "Cis2", speed.warnig$period)
speed.warnig$period <- gsub("3", "Cis3", speed.warnig$period)

##Tworzenie wykresu na podstawie wygenerowaneych wcześniej danych 
ggplot(speed.warnig, aes(x = speed)) + geom_density()
+ labs(x = "Szybkość bicia", y = "Zachodzące zmieny w przysierciu")

##Tworzenie wykresuu za pomocą zmiennych grupowania pacjentów 
ggplot(speed.warnig, aes(x = speed, fill = period)) + geom_density() + labs(x = "Szybkość bicia", y = "Zachodzące zmieny w przysierciu", fiil = "Czestotliwosc")

##Wyświetlanie wykresu na na różnych płaszczyznach
ggplot(speed.warnig, aes(x = speed, fill = period)) + geom_density() 
+ labs(x = "Szybkość bicia", y = "Zachodzące zmieny w przysierciu", fill = "Czestotliwosc")
+ facet_grid(warning ~ .)

# wykres zakresu normatywlnego 
normal.values <- rnorm(speed)
range(normal.values)
ggplot(data.frame(X = normal.values), aes(x = X)) + geom_density() + labs(x = "Szybkość bicia w s")

##wykres punktowy
ggplot(speed.warnig, aes(x = speed, y = warning)) + geom_point() + labs(x = "Szybkość bicia w s", y = "Tkanka zmian")
## przypisanie tabeli speed do zmienej speed
speed <- with(speed.warnig, speed)
## Wyświetlenie podstawowych jednostek statystycznych takich jak Min, 1 i 3 kawrtyl, Mediana, Śr. Art, Max
summary(speed)

##Wyliczanie średniej 
mean(speed)

## Wyliczanie mediany 
median(speed)

## obliczenie standartowych qwartyli 
quantile(speed)

## obliczanie przy zastosowanie innej skali dla qwartyli 
quantile(speed, probs = seq(0, 1, by = 0.20))

## Funkcja warancji dla zmiennych speed 
speed.var <- function(x){
  m <- mean(x)
  return(sum(x - m)^2) / length(speed) ## lub jeżeli estymata wynosi do zaniżania to length(speed - 1)
}
speed.var(speed) - var(speed)

## Zmiana warancji na odcylenia standardowe
speed.sd <- function(x){
  return(sqrt(speed.var(x)))
}
speed.sd(speed) - sd(speed)

x <- cbind(x1 = 3, x2 = c(4:1, 2:5))
rowSums(x); colSums(x)
dimnames(x)[] <- speed[]
rowSums(x); colSums(x); rowMeans(x); colMeans(x)