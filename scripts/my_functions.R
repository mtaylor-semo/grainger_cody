# Cody Grainger
# Hw08 functions


#Standard error of the mean
#First argument finds the standard deviation of the variable
#the second arguments finds the square root of the legnth of x
std_err <- sd(x)/sqrt(length(x))


#First 5 values for mass and tarsus
mass <- c(26.7, 22.8, 25.7, 26.1, 23.9)
tarsus <- c(18.4, 17.5, 18.4, 18.0, 18.2)

# Mass is the vector that contains individual masses
# Tarsus contains individual tarsus measurements
# The mass of the individual is multiplied by the division of the mean tarsus length by the individual tarsus lengths
# 'b' refers to the slope variable
scaled_mass <- mass * ((mean(tarsus)/tarsus)^b)
scaled_mass
  
