library(ggplot2)
library(GGally)
library(MASS)

data(mtcars)

mtcars$cyl  <- factor(mtcars$cyl)
mtcars$vs   <- factor(mtcars$vs)
mtcars$am   <- factor(mtcars$am, labels = c("Automatic", "Manual"))
mtcars$gear <- factor(mtcars$gear)
mtcars$carb <- factor(mtcars$carb)

#exploratory data analysis:
#pairs(mpg ~ ., data = mtcars, )
g <- ggpairs(mtcars[,c("mpg","cyl","disp","wt")], diag = list(continuous = "blank"), title = "Pairs plot")
#print(g)

g <- ggplot(mtcars, aes(x = am, y = mpg, color = am)) + 
    geom_boxplot(outlier.colour = "green") +
    labs(title = "Miles per Gallon by Transmission Type\n") +
    theme(axis.title = element_blank(), legend.position = 'none')
#print(g)

g = ggplot(mtcars, aes(x = wt, y = mpg)) +
    geom_smooth(method = "lm")
#print(g)


g1 <- ggplot(mtcars, aes(x = wt, y = mpg)) +
    geom_point(aes(y = mpg, x = wt,  colour = wt)) +
    geom_smooth(method = "lm")

g2 <- ggplot(mtcars, aes(x = cyl, y = mpg)) +
    geom_point(aes(y = mpg, x = cyl, colour = cyl)) +
    geom_smooth(method = "lm")

g3 <- ggplot(mtcars, aes(x = hp, y = mpg)) +
    geom_point(aes(y = mpg, x = hp,  colour = hp)) +
    geom_smooth(method = "lm")

multiplot(g1, g2, g3, cols = 2)


#regression
# Stepwise Regression
#fit <- lm(mpg~., data = mtcars)
#step <- stepAIC(fit, direction = "both")
#step$anova # display results