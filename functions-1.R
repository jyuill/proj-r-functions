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
