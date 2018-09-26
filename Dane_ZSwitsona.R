data.file <- file.path("Desktop", "test1.csv")
## importowanie binarnych plików do bazy 
dane.Swittson<- readBin(data.file, integer(), n=5000)
readvals = dane.Swittson[1:200]
writevals = dane.Swittson[201:400]
mathvals = dane.Swittson[401:600]
danenr2 = dane.Swittson[1:200]

dane.Swittson = cbind(readvals, writevals, mathvals, danenr2)
colnames(rdata) = varnames
dane.Swittson[1:200,]

set.seed(1234)
dplyr::sample_n(dane.Swittson, 10)

library(dplyr)
group_by(dane.Swittson, group) %>%
  summarise(
    count = n(),
    mean = mean(weight, na.rm = TRUE),
    sd = sd(weight, na.rm = TRUE)
  )

if(!require(devtools)) install.packages("devtools")
devtools::install_github("kassambara/ggpubr")

normal.values <- rnorm(daner2)
range(normal.values)
ggplot(data.frame(X = normal.values), aes(x = X)) + geom_density() + labs(x = "Time", y = "Zmiany w pojemnościach płuc w litrach")

wave.1 <- sin(3*mathvals)
wave.2 <- sin(10* mathvals)
par(mfrow = c(1, 2))
plot(xs,wave.1,type="l",ylim=c(-1,1)); abline(h=0,lty=3)
plot(xs,wave.2,type="l",ylim=c(-1,1)); abline(h=0,lty=3)


repeat.xs <- seq(-2*pi,0,pi/100)
wave.3.repeat <- 0.5*sin(3*repeat.xs) + 0.25*sin(10*repeat.xs)
plot(xs,wave.3,type="l"); title("Repeating pattern")
points(repeat.xs,wave.3.repeat,type="l",col="red"); abline(h=0,v=c(-2*pi,0),lty=3)

range(dane.ddd)

ggplot(mathvals(x = mathvals, y = writevals) + geom_density()) 


ggplot(danenr2, readvals, data=dane.Swittson, shape=am, color=am,
      facets=gear~cyl, main="Scatterplots of MPG vs. Horsepower",
      xlab="Horsepower", ylab="Miles per Gallon")

plot(data = mathvals)



path = paste0(getwd(), '/Desktop/test1.csv')


hapl_hash = hash_apply(path, hash_size = 6, method = "dhash", mode = "hash", threads = 1,  resize = "nearest")


## Załadowanie obrazu do bazy 

path <- file.path("Desktop", "medium_3.png")
im = readImage(path)
dim(im)
imageShow(im)

## Zmiana szarości rgb pliku 
r2g = rgb2hsv(im)
imageShow(r2g)

## Wyjkrywanie konturów 
edsc = edge_detection(im, method = 'Scharr', conv_mode = 'same')
imageShow(edsc)

## Zmiana szarości skalarności 
im = readImage(path)
thr = image_thresholding(im, thresh = 0.76)
imageShow(thr)


im = readImage(path)
dim(im)
edsc = Augmentation(im, flip_mode = 'horizontal', crop_width = 20:460, crop_height = 30:450, 
                    resiz_width = 180, resiz_height = 180, resiz_method = 'bilinear', 
                    shift_rows = 0, shift_cols = 0, rotate_angle = 350, 
                    rotate_method = 'bilinear', zca_comps = 100, 
                    zca_epsilon = 0.1, image_thresh = 0.0, verbose = T)
imageShow(edsc)

#Tworzenie macieży z obrazka 
image = readImage(path)
res = HOG(image, cells = 3, orientations = 6)
res



image = readImage(path)
res = edge_detection(image, method = 'Frei_chen' , conv_mode ='same', range_gauss = 10, sigma = 100)
imageShow(res)
