## Functions Intro
## Datacamp course 'Writing R Functions'

### FUNCTION 1
## simple function with 2 arguments
## second argument, y, set to default
my_fun <- function(x, y=1){
  x+y
}

## x needs to be specified in function call
## assumes first argument is x
## uses default for y
my_fun(2)

## can speficy x
my_fun(x=4)

## can use variable to specify x
x <- 5
my_fun(x)

## add second argument to override y default
my_fun(x,2) ## second argument overrides default

## can explicitly specify y but not needed
my_fun(x, y=3)

## can you change order? 
my_fun(y=4, x=8) ## unclear because sum

## try function where order matters
my_fun2 <- function(x, y){
  x/y
}

my_fun2(2,4)
my_fun2(y=2, x=4) ## yes, you can specify different order

### FUNCTION 2: Anonymous
## you can use functions without naming them
## everything has to be on the same line
## call it with values after the function
## need to have brackets around function
(function(x,y){x*y})(x=2,y=5)
(function(x,y){x*y})(2,6)
## can use variables
x <- 4
y <- 4
(function(x,y){x*y})(x,y)

### FUNCTION 3: More arguments
my_fun3 <- function(a,b,c,d){
  (a+b)/(c+d)
}
## best to use names when more than 2 args
my_fun3(a=1,b=3,c=6,d=10)

### FUNCTION 4: no args specified in function
## don't need to list args if not passing them in
my_fun4 <- function(){
  x <- 2
  y <- 3
  x+y
}
my_fun4()

### FUNCTION 5: setting variables based on values created in function
my_fun5 <- function(x,y){
  x+y
}
## set output to a variable when calling
## variable and value now in Global Environment
xy <- my_fun5(x=2, y=5)
## no output until call function variable
xy

### FUNCTION 6: setting multiple variables
my_fun6 <- function(x,y,z){
  total <- x+y+z
  prod <- x*y*z
}
## only returns last calculation
my_fun6(3,5,7)
## also only returns last calc
xyz <- my_fun6(2,4,6) 
xyz

## break into two functions?
my_fun6s <- function(x,y,z){
  total <- x+y+z
}
my_fun6p <- function(x,y,z){
  prod <- x*y*z
}
x <- 2
y <- 4
z <- 6
ttl <- my_fun6s(x,y,z)
prod <- my_fun6p(x,y,z)
c(ttl, prod)

### FUNCTION 7: combine variables within function to produce multiple
my_fun7 <- function(x,y,z){
  total <- x+y+z
  prod <- x*y*z
  c(total, prod)
}

x <- 2
y <- 4
z <- 6
tp <- my_fun7(x,y,z)
tp
tp[1]
tp[2]

### FUNCTION 8: get and store different results for different inputs
my_fun8 <- function(x,y,z){
  prod <- x*y*z
}

xvar <- 2
yvar <- 3
zvar <- 4
v1 <- my_fun8(xvar, yvar, zvar)
v1

xvar <- 4
yvar <- 6
zvar <- 8
v2 <- my_fun8(xvar, yvar, zvar)
v2

df <- data.frame(type=c("solid","dotted"),
                 units=c(v1,v2))

library(tidyverse)
ggplot(df, aes(x=type, y=units))+geom_bar(stat='identity')

