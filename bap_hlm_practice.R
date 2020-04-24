## Woltman, H., Feldstain, A., MacKay, J. C., & Rocchi, M. (2012). 
## An introduction to hierarchical linear modeling. 
## Tutorials in quantitative methods for psychology, 8(1), 52-69.

student_id <- c(1:10)
classroom_id <- c(1,1,2,2,3,3,4,4,5,5)
school_id <- c(rep(1,10))
gpa <- c(5,7,4,6,3,5,2,4,1,3)
breakfast_consumption <- c(1,3,2,4,3,5,4,6,5,7)

frame <- data.frame(student_id, classroom_id, school_id, gpa, breakfast_consumption)

## Disaggregation Method
plot(breakfast_consumption, gpa)
abline(lm(gpa ~ breakfast_consumption), col = 'red')

## Aggregation Method
classroom_1 <- subset(frame, classroom_id ==1)
classroom_2 <- subset(frame, classroom_id ==2)
classroom_3 <- subset(frame, classroom_id ==3)
classroom_4 <- subset(frame, classroom_id ==4)
classroom_5 <- subset(frame, classroom_id ==5)

classroom_gpa <- c(mean(classroom_1$gpa), mean(classroom_2$gpa), mean(classroom_3$gpa),
                   mean(classroom_4$gpa), mean(classroom_5$gpa))
classroom_breakfast <- c(mean(classroom_1$breakfast_consumption), mean(classroom_2$breakfast_consumption),
                         mean(classroom_3$breakfast_consumption), mean(classroom_4$breakfast_consumption),
                         mean(classroom_5$breakfast_consumption))
plot(classroom_breakfast, classroom_gpa)
abline(lm(classroom_gpa ~ classroom_breakfast), col = 'red')
