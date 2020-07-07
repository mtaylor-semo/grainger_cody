# Cody Grainger

# hw2-5

#

###Part 5 Data Frames

#

# Setion 5.2

#

# Load 'iris' data frame
data(iris)
iris

#First 10 rows of 'iris'
head(iris,n=10)

#Last rows of 'iris'
tail(iris)

#dimesnions of 'iris'
dim(iris)

#structure of 'iris'
str(iris)

#

## Section 5.3

#

#Displaying the 101st row of column 'petal.length'
iris[101,3]

#Displaying the first 6 rows of all columns 
iris[1:6,]

#Displaying rows 48-52 of the 4th column using the column header name
iris[48:52,"Petal.Width"]

#Displaying the contents of the 'Sepal.Width' using '$'
iris$Sepal.Width

#Challenge
iris[50:51,iris$Species]

#

## Section 5.4

#

#Extracting rows where sepal length is less than or equal to 5.5 and assigning it to a variable
small_length_sepal <- iris$Sepal.Length <=5.5
s_l_s <- iris[small_length_sepal,]
s_l_s

#Min and max of 's_l_s'
max(s_l_s$Sepal.Length)
min(s_l_s$Sepal.Length)

#Displaying rows where sepal width is less than 3.2 and species is setosa
setosa <- iris$Species == "setosa"
sw_sepal <- iris$Sepal.Width < 3.2
iris[setosa & sw_sepal,]

#Diplaying rows where sepal width < 2.5 or petal width > 2
sw2_sepal <- iris$Sepal.Width < 2.5
sw_petal <- iris$Petal.Width > 2

iris[sw2_sepal | sw_petal,]

#

## Section 5.5

#

# Use subset() to display rows for petal length bwteeen and including 4 and 5 from 'iris'
subset(iris, Petal.Length >= 4 & Petal.Length <= 5)

#Using subsets to display sepal lengths < 5.2 and versicolor species
subset(iris, Sepal.Length < 5.2 & Species == "versicolor")

#

## Section 5.6

#

# Sorting sepal lengths from shortest to longest with order()
sl_order <- order(iris$Sepal.Length)
iris[sl_order,]

# displaying species column showing pedal width in decreasing order
pw_order <- order(iris$Petal.Width, decreasing = TRUE)
iris[pw_order,c("Species", "Petal.Width")]