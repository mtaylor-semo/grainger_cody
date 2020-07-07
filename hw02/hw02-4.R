# Cody Grainger
# hw 02-3

### Part 4 Factors

#

##Section 4.1 

#

# Bubmle bee vector. In order according to species that visited a single flower
bee_visitor_vector <- c("kirbiellus","kirbiellus","favifrons","kirbiellus","bifarius","flavifrons","kirbiellus")
bee_visitor_vector
 
 #Creating a factor from 'bee_visitor_vector'
bee_visitor_factor <- factor(bee_visitor_vector)
bee_visitor_factor

#

## Section 4.2

#

#definng proboscis length for bubmle bee types in previous vector
proboscis_vector <- c("long","long","intermediate","long","short","intermediate","long")
#Creating a factor from 'proboscis_vector' ordered long to short
proboscis_factor <- factor(proboscis_vector,ordered=TRUE,levels = c("long","intermediate","short"))
proboscis_factor

#

## Section 4.3

#

#Summary if info in 'bee_visitor_factor' and 'proboscis_factor'
summary(bee_visitor_factor)
summary(proboscis_factor)

#

## Section 4.4

#

# All non "kirbiellus" elements from 'bee_visitor_factor' using 'proboscis_factor'
non_kirbiellus <- proboscis_factor > "long"
non_kirbiellus

# Elements 2 and 4:6 from 'bee_visior_factor'
visitors_2 <- bee_visitor_factor[c(2,4:6)]
visitors_2

# Testing elements 1 and 3 of 'proboscis_factor" to see if 1 is longer than 3
pf1 <- proboscis_factor[1]
pf3 <- proboscis_factor[3]
pf1 > pf3

# Challenge
length(proboscis_factor)
proboscis_factor[7]

