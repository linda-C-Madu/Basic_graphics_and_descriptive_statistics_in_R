
## Basic graphics and descriptive statistics
## Student number (202126672)
## Student name: Linda Madu


## Getting the details of the mtcars dataset
## Summarize the data in each column


?mtcars

head(mtcars)
#                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
#Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
#Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
#Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
#Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
#Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
#Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1

## The hp column would be used here

# A boxplot would be used to present the data graphically

mtcars[,'wt']                 
#[1] 110 110  93 110 175 105 245  62  95
#[10] 123 123 180 180 180 205 215 230  66
#[19]  52  65  97 150 150 245 175  66  91
#[28] 113 264 175 335 109                                    

mtcars$wt ##A dollar notation was used for the data frames


# A boxplot would be used to present the data graphically

boxplot(mtcars$wt)
# the central bar shows the median
# the box shows the interquartile range
# the whiskers show ~ 95% confidence intervals

# Labels were added to the boxplot and this was achieved by the addition of arguments in the box plot command

boxplot(mtcars$wt, 
        ylab = 'miles per gallon',
        xlab = "values",
        las = 1, ##turns the Y axis labels horizontal
        main = "weight in the mtcars dataset"
)


## Report the correct descriptive statistics for each column in the annotations


## Reporting the median and IQ range in the first column

median(mtcars$wt)
# [1] 3.325

IQR(mtcars$wt)
##IQR, a measure of variability in the data
# [1] 1.02875


## In the mtcars dataset, fuel efficiency was a median of 3.325 mpg (± IQR 1.02875)


## The qsec column was used in the next data column
## qsec (1/4 mile time)


## Using a histogram to present the data graphically

hist(mtcars$qsec)
## The histogram needs to be labelled

hist(mtcars$qsec,
     xlab = "rear axle ratio",
     las = 1, ## this was used to turn the Y labels the right way round
     main = "Distribution of 1/4 mile time",
     col = "purple",
     border = "red",
     lwd = 4
)


## Calculate the mean and standard error

# Calculating the mean

mean(mtcars$qsec)
# [1] 17.84875


# Calculating the standard error

# standard error = sd / sqrt(n)

std.error <- function(x)
          sd(x) / sqrt(length(x))
          ## sd = standard deviation
          ## sqrt = square root
          ## length = number of observations

std.error(mtcars$qsec)
# [1] 0.3158899

## In the mtcars dataset, the 1/4 mile time was a mean of 17.85 ± SE 0.32


## Use the table() function to generate the frequencies of cars with each number of carburettors
## The carb column was used

table(mtcars$carb)
# 1  2  3  4  6  8 
# 7 10  3 10  1  1 


## Produce a barplot to summarise the data graphically


barplot(table(mtcars$carb),
        xlab = 'number of carb',
        ylab = 'frequency',
        las = 1,
        col = 'red',
        border = 'blue',
        main = 'frequency of carb numbers \n in mtcars dataset',
)



## The three figures would be put side by side


par(mfrow = c(1, 3))


## Figure one

boxplot(mtcars$wt, 
        ylab = 'miles per gallon',
        xlab = "values",
        las = 1, ##turns the Y axis labels horizontal
        main = "weight in the mtcars dataset"
)


## Figure two

hist(mtcars$qsec,
     xlab = "rear axle ratio",
     las = 1, ## this was used to turn the Y labels the right way round
     main = "Distribution of 1/4 mile time",
     col = "purple",
     border = "red",
     lwd = 4
)

## Figure three

barplot(table(mtcars$carb),
        xlab = 'number of carb',
        ylab = 'frequency',
        las = 1,
        col = 'red',
        border = 'blue',
        main = 'frequency of carb numbers \n in mtcars dataset',
)

abline(h=0) ##add a horizontal line at the bottom       


##END
