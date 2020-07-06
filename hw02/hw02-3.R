# Cody Grainger
# hw02-3

### 3 Matrices


## Section 3.1 What is a matrix

#simple matrix example
first_matrix <- matrix(1:9, byrow = TRUE, nrow = 3)
first_matrix

#row-wise matrix with 4 rows with numbers 11:30
matrix_2 <- matrix(11:30, byrow = TRUE, nrow = 4)
matrix_2

matrix_3 <- matrix(11:30, byrow=FALSE, ncol=5)
matrix_3

#

##Section 3.2 Construct a matrix

chick_weights <- chickwts$weight[c(1:20,23:32)]

#matrix of chick_weights
three_diets <- matrix(chick_weights, byrow=FALSE, ncol=3)
three_diets

#

## Section 3.3 Name the columns and rows

#Naming the columns and rows for chickwts
column_names_Vector <- c("horsebean","linseed","soybean")
row_names_vector <- c(paste("Replicate",1:10))

#defining the names of the columns with the previously created vectors
rownames(three_diets) <- row_names_vector
colnames(three_diets) <- column_names_Vector
#Display
three_diets

#

## Section 3.4 Calculations on matrices

#Mean weights for each diet type (column means)
mean_weights <- colMeans(three_diets)
mean_weights

#mean of all chick weights
mean(chick_weights)

#

## Section 3.5 Adding a column with another diet type

#Defining another feed type
casein <- chickwts$weight[60:69]

#Combining the new feed type into the existing matrix
four_diets <- cbind(three_diets,casein)
four_diets

# The means for each for the diets
mean_weights_4diets <- colMeans(four_diets)
mean_weights_4diets

#

## Section 3.6 Selecting matrix elements

#Selecting vaerious matrix elements from 'four_diets'by names and numbers
four_diets

four_diets[,2]

four_diets[,"soybean"]

four_diets[9,]

four_diets["Replicate 3",]

four_diets[5,"horsebean"]

#

## Section 3.7Arithmetic with matrices

# Arithmetic with matrices examples

four_diets

four_diets * 0.35

log(four_diets)

dim(four_diets)

length(four_diets)