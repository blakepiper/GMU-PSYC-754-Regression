library(car)
library(ggplot2)
library(foreign)
library(sqldf)
library(pastecs)
setwd("/Users/blakefinnegan/Documents/George Mason/Spring 2020/Regression/Lab/Week 1")

data <- read.spss("/Users/blakefinnegan/Documents/George Mason/Spring 2020/Regression/Lab/Week 1/week1_dat.sav", to.data.frame = TRUE)

question1 <- c(8, 9)
question2 <- c(25, 29)

question3_a <- cov(data$age, data$shoe_size, use = "everything", 
    method = c("pearson"))

question3_b <- cor(data$age, data$shoe_size, use = "everything", 
    method = c("pearson"))
test <- c(data$age, data$shoe_size)
model <- lm(data$age ~ data$shoe_size)
abline(lm(data$age ~ data$shoe_size), col = "red")
corrr <- cor.test(data$age,data$shoe_size)

descriptives <- data.frame(stat.desc(data))

final_plot <- ggplot(data, aes(x=age, y=shoe_size)) + geom_point(size = 2) +
  geom_smooth(method ="lm") + labs(title = "Beautiful Plot", x = "Age", y = "Shoe Size")

