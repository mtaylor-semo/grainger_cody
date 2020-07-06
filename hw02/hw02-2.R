# Cody Grainger
#hw02-02

###Part 2 - Vectors

##Section 2.1 Vectors explained

#c() combines multiple values of the same data type together

#combining text string
alphabet <- c("A","B","C","D","E","F")
alphabet

#combining integers
integers <- c(1,2,3,4,5,6)
integers

#Undefined variables will not work
# Ex: alphabet_2 <- (A,B,C) 
# Variables must be defined first

A <- "A"
B <- "B"
A
B

alphabet <- c(A,B,"C","D","E","F")
alphabet

# Defining 'G" as a numeric class variable
G <- 7
G
class(G)
Class(alphabet)

## Section 2.2 Vector types

#String Vector
alphabet <- c("A","B","C","D","E","F")
alphabet

#Integer Vector
integers <- c(1,2,3,4,5,6)
integers

#Logical Vector
logical_vector <- c(FALSE,FALSE,TRUE)
logical_vector

## Section 2.3 Biological vectors
cultures_without_pplo <- c(4.6,4.8,5.1,5.5,5.8)
cultures_without_pplo

cultures_with_pplo <- c(4.6,4.7,4.8,4.9,4.8)
cultures_with_pplo

## Section 2.4 Name your vectors

#My first and last name
name_vector <- c("Cody","Grainger")

#Naming/categorizing the respective names
names(name_vector) <- c("First Name","Last Name")
name_vector

#Using variables to hold vectors and naming each data vector
days_sampled <- c("Day 0", "Day 2", "Day 4", "Day 6", "Day 8")
names(cultures_with_pplo) <- days_sampled
names(cultures_without_pplo) <- days_sampled

cultures_with_pplo

cultures_without_pplo

## Section 2.5 Calculations with vectors

#Example
six_numbers <- c(1,2,3,5,8,13)

# Add 10 to each value
six_numbers <- six_numbers + 10

#Displayed
six_numbers

# Obtain the square root of each value
six_numbers <- sqrt(six_numbers)

#Displayed
six_numbers

#Calculating the sum and mean of six_numbers
sum(six_numbers)
mean(six_numbers)

## Min and max of the pplo and assigning them to variables
max_with_pplo <- max(cultures_with_pplo)
min_with_pplo <- min(cultures_with_pplo)

max_without_pplo <- max(cultures_without_pplo)
min_without_pplo <- min(cultures_without_pplo)

max_with_pplo
min_with_pplo

max_without_pplo
min_without_pplo

#Logs on vectors
cell_counts_with_pplo <- 10^cultures_with_pplo
cell_counts_with_pplo
mean(cell_counts_with_pplo)

cell_counts_without_pplo <- 10^cultures_without_pplo
cell_counts_without_pplo
mean(cell_counts_without_pplo)

## Section 2.6 Extract individual elements from a vector

#Selecting the thrird element from 'cultures_without_pplo'
cultures_without_pplo[c(3)]

#selecting odd numbered elements from 'cell_counts_with_pplo' using a vector of position numbers
position_vector <- c(1,3,5)
cell_counts_with_pplo[position_vector]

#Selecting elements for 'day 2' and 'day 4' by name from 'cultures_with_pplo"
cultures_with_pplo[c("Day 2","Day 4")]

#

##Section 2.7 Extraction by logical comparison

#Examples of T/F
2>1
2<1
3 !=4
5 == 5
"ABC" == "AB C"
sum(c(2,3)) >= 5
sum(c(1,2,3)) >= 5
# Returns a vector for T/F
c(1,2,3) <= 2

# Logical vector for cell counts greater than 100,000 for 'cell_counts_without_pplo'
Without_pplo_over_tenthousand <- cell_counts_without_pplo > 100000
Without_pplo_over_tenthousand

#Using the above vector to show the days and log values of 'culutrs without pplo'cultures without pplo' greater than 10,000
cultures_without_pplo[Without_pplo_over_tenthousand]

#Creating a logical vector to show cell counts geeater than 50,000 and less than 75,000 for 'cell_counts_with_pplo'
sorted_with_pplo <- cell_counts_with_pplo > 50000 & cell_counts_with_pplo <75000
sorted_with_pplo

#using the above vector to show days and log values for 'cultures_with_pplo'
cultures_with_pplo[sorted_with_pplo]