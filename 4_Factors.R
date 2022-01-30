# A factor is a statistical data type used to store categorical variables. 
# A categorical variable can belong to a limited number of categories. 
# A continuous variable, on the other hand, can correspond to an infinite number of values.

# An example of a categorical variable is sex. In many circumstances you can limit the sex categories to "Male" or "Female". 
    # (Sometimes you may need different categories. For example, you may need to consider chromosomal variation, hermaphroditic animals, or different cultural norms, but you will always have a finite number of categories.)
# It is important that R knows whether it is dealing with a continuous or a categorical variable, as the statistical models you will develop in the future treat both types differently.

# Assign to the variable theory the value "factors"
theory <- "factors"

# Sex vector
sex_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert sex_vector to a factor
factor_sex_vector <- factor(sex_vector)
# The function factor() will encode the vector as a factor

# Print out factor_sex_vector
factor_sex_vector  # prints Levels: Female Male

# There are two types of categorical variables: a nominal categorical variable and an ordinal categorical variable.
# A nominal variable is a categorical variable without an implied order. This means that it is impossible to say that 'one is worth more than the other'. 
# Ordinal variables do have a natural ordering. 

# Animals (nominal variables)
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector  # prints Levels: Donkey Elephant Giraffe Horse

# Temperature (ordinal variables)
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector  # prints the temps and Levels: Low < Medium < High

# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
factor_survey_vector  # prints Levels: F M

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")  # need to order alphabetically as factor() does
factor_survey_vector # prints Levels: Female Male

# Generate summary for survey_vector
summary(survey_vector)  # prints Length, Class, and Mode with values

# Generate summary for factor_survey_vector
summary(factor_survey_vector)  # prints the count of how many Females and Males there are

# Male
male <- factor_survey_vector[1]

# Female
female <- factor_survey_vector[2]

# Battle of the sexes: Male 'larger' than female?
male > female  # prints NA

# Create speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")

# Convert speed_vector to ordered factor vector
factor_speed_vector <- factor(speed_vector,
                              ordered = TRUE,
                              levels = c("slow", "medium", "fast"))

# Print factor_speed_vector
factor_speed_vector  # prints the speeds and Levels: slow < medium < fast
summary(factor_speed_vector)  # prints the number of slow, medium, fast that there are

# Factor value for second data analyst
da2 <- factor_speed_vector[2]
da2  # slow

# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]
da5  # fast

# Is data analyst 2 faster than data analyst 5?
da2 > da5  # prints FALSE