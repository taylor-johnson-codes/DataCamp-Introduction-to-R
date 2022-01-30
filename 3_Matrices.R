# A matrix is a 2-D array of rows and columns.
# A matrix is a collection of elements of the same data type (numeric, character, or logical-true/false) arranged into a fixed number of rows and columns. 
# Use the matrix() function to construct a matrix.

# Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow = TRUE, nrow = 3)
# byrow=TRUE means fill in the matrix by row; byrow=FALSE means fill in the matrix by column
# nrow means number of rows

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)

# OR 
# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow = 3)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
star_wars_matrix

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope", 
            "The Empire Strikes Back", 
            "Return of the Jedi")

star_wars_matrix <- matrix(box_office, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(titles, region))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector

# Bind the new variable worldwide_vector as a column to star_wars_matrix
# cbind() adds a column or multiple columns to a matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix

# Combine both Star Wars trilogies in one matrix
# rbind() adds a row or multiple rows to a matrix
star_wars_matrix2 <- star_wars_matrix  # Pretend star_wars_matrix2 is a different list of movie titles
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)
total_revenue_vector  # prints totals in 2 columns titled US and non-US

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]
non_us_all

# Average non-US revenue
mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]
non_us_some

# Average non-US revenue for first two movies
mean(non_us_some)

# Estimate the visitors
# Assume each ticket cost $5
visitors <- all_wars_matrix / 5
visitors

# # The following won't work because ticket_prices_matrix isn't built here
# # Estimated number of visitors
# visitors <- all_wars_matrix / ticket_prices_matrix
# 
# # US visitors
# us_visitors <- visitors[,1]
# 
# # Average number of US visitors
# mean(us_visitors)