# Vectors are 1-D arrays that can hold numeric, character, or logical (true/false) data. 
# The elements in a vector all have the same data type.
# Use the combine function c() to create a vector. 
# Elements start at position 1 (NOT 0!)

# Define the variable vegas
vegas <- "Go!"

numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")

# Complete the code for boolean_vector
boolean_vector <- c(TRUE, FALSE, TRUE)

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vector
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# OR:
# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <- A_vector + B_vector

# Print out total_vector
total_vector  # prints 5 7 9

# Assign to total_daily how much you won/lost on each day
total_daily <- roulette_vector + poker_vector

# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <- sum(roulette_vector) 

# Total winnings overall
total_week <- total_poker + total_roulette

# Print out total_week
total_week

# Check if you realized higher total gains in poker than in roulette
total_poker > total_roulette  # prints TRUE

# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]
poker_wednesday  # prints 20

# Define a new variable based on a selection
poker_midweek <- poker_vector[c(2,3,4)]
poker_midweek  # prints -50 20 -120
class(poker_midweek)  # prints "numeric"
is.vector(poker_midweek)  # prints TRUE

# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector[c(2:5)]
roulette_selection_vector  # prints -50 100 -350 10

# Select poker results for Monday, Tuesday and Wednesday
poker_start <- poker_vector[c("Monday", "Tuesday", "Wednesday")]
poker_start  # prints day headings and values underneath

# Calculate the average of the elements in poker_start
mean(poker_start)

# Which days did you make money on poker?
selection_vector <- poker_vector > 0
selection_vector  # prints day headings with TRUE/FALSE values underneath

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days  # prints day headings of only winning days with values underneath

# Which days did you make money on roulette?
selection_vector <- roulette_vector > 0
selection_vector

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]
roulette_winning_days