# A list in R allows you to gather a variety of objects under one name (that is, the name of the list) in an ordered way. 
# These objects can be matrices, vectors, data frames, even other lists, etc. It is not even required that these objects are related to each other in any way.
# Use list() to create a list.

# Vector with numerics from 1 up to 10
my_vector <- 1:10 
my_vector

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)
my_matrix

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]
my_df

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)
my_list

# Give the components names
names(my_list) <- c("vec", "mat", "df")
my_list


# The variables mov, act and rev are NOT available here so the following code doesn't run in this environment

# Finish the code to build shining_list
shining_list <- list(moviename = mov,
                     actors = act,
                     reviews = rev)

# Print out the vector representing the actors
shining_list[[2]]

# Print the second element of the vector representing the actors
shining_list[[2]][2]

# Use the table from the exercise to define the comments and scores vectors
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", "Fascinating plot")

# Save the average of the scores vector as avg_review
avg_review <- mean(scores)

# Combine scores and comments into the reviews_df data frame
reviews_df <- data.frame(scores, comments)

# Create and print out a list, called departed_list
departed_list <- list(movie_title, movie_actors, reviews_df, avg_review)
departed_list