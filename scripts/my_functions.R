# Cody Grainger
# Hw08 functions


library(tidyverse)

#Standard error of the mean
#First argument finds the standard deviation of the variable
#the second arguments finds the square root of the legnth of x
std_err_e <- sd(x)/sqrt(length(x))

average <- function(args) {
  total <- sum(args)
  avg <- total/length(args)
  return(avg)
}

#std_err function

std_err <- function(args) {
  std_dev <- sd(args)
  sqrtL <- sqrt(length(args))
  return(std_dev/sqrtL)

}

# Test average
# average(c(5,11,19))

#Test std_err
# std_err(c(0, 1, 1, 2, 3, 5, 8, 13, 21, 34))

#First 5 values for mass and tarsus
mass <- c(26.7, 22.8, 25.7, 26.1, 23.9)
tarsus <- c(18.4, 17.5, 18.4, 18.0, 18.2)
slope <- 1.5

# Mass is the vector that contains individual masses
# Tarsus contains individual tarsus measurements
# The mass of the individual is multiplied by the division of the mean tarsus length by the individual tarsus lengths
# 'b' refers to the slope variable
scaled_mass_e <- mass * ((mean(tarsus)/tarsus)^b)

scaled_mass <- function(mass,tarsus,b){
  tss <- (mean(tarsus)/tarsus)^b
  return(mass*tss)
}

scaled_mass(mass,tarsus,b)
