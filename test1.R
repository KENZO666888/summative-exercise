# Load the required library
library(dplyr)

# Define a function named 'calculate_performance' that takes a single argument 'data'
calculate_performance <- function(data) {
  # Check if 'data' is a data frame
  if (!is.data.frame(data)) {
    stop("Input data must be a data frame.")
  }
  
  # Use mutate to calculate Engine Efficiency and add it as a new column
  transformed_data <- data %>%
    mutate(Engine_Efficiency = mpg / hp)
  
  # Return the transformed data
  return(transformed_data)
}

# Load the built-in 'mtcars' dataset
data(mtcars)

# Use the function to calculate Engine Efficiency and add it as a new column
mtcars_with_Engine_Efficiency <- calculate_performance(mtcars)

# Print the transformed data
print(mtcars_with_Engine_Efficiency)
