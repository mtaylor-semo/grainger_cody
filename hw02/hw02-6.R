# Cody Grainger

# hw2-6

### Part 6 Lists

# Creating a single list including a numeric vector, a logical vector, a matrix, and a data frame.
numeric_vector <- 1:6
Logical_vector <- rep(c(TRUE,FALSE),4)
letter_matrix <- matrix(LETTERS[1:9], ncol=3)
chicks_df <- chickwts[1:10,]

the_list <- list(numbers = numeric_vector, boolean = Logical_vector, letters = letter_matrix, chicks = chicks_df)
the_list

#

## Section 6.3 

#Creating 2 data vectors for comparisson with a t test
hb_chicks <- chickwts$weight[1:10]
ls_chicks <- chickwts$weight[11:20]
#Running the t test with the above vectors
chicks_t <- t.test(hb_chicks, ls_chicks, var.equal = TRUE)

#Structure of 'chicks_t'
str(chicks_t)

#Display the statistic value for 'chicks_t'
chicks_t[1]

#Display the numeric value 'p.value' object from 'chicks_t'
chicks_t[3]

#Display the lower limit confidence interval
chicks_t$conf.int[1]

#Display the upper limit confidence interval
chicks_t$conf.int[2]

#'Whew'
Whew <- "I Did it!"
Whew