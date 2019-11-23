mydata <- mtcars[,c(1,3,4,5,6,7)]
head(mydata)

linear_reg <- lm(mpg~., data = mydata)

linear_reg

summary(linear_reg)

# P plantea hipotesis

plot(linear_reg)

require(caret)

grid <- expand.grid(intercept = c(TRUE,FALSE))

grid

set.seed(2010)
train(mpg~.,data=mydata,
      method="lm",tuneGrid=grid)

train(mpg~.,data=mydata,
      method="lm",tuneLength=10)

# De lo simple a lo complejo:
## Regresion Linear: Problemas de regresion
## XGBoost
# Clasificacion
## Regresion Logistica
## Naive
## SVM
## Random Forest
## XXGBoost

