  # 1. Display the structure and content of the file using the function head()
  
  data <- read.csv("Sacramentorealestatetransactions.csv")
  head(data)
  
  # 2. Display the descriptive statistics of the data contained in the file.
  
  summary(data)
  
  # 3. Clean the dataset (remove outliers and corrupted records).
  
  # remove records with missing values
  data <- data[complete.cases(data),]
  
  # remove records with zero or negative square footage
  data <- data[data$sq__ft > 0,]
  
  # remove records with zero or negative price
  data <- data[data$price > 0,]
  
  # 4. Plot the scatter plot of:
  # a) Number of bathrooms (baths) against price.
  # b) Number of bedrooms (beds) against price.
  # c) Surface of the house (sq__ft) against price.
  
  library(ggplot2)
  
  ggplot(data, aes(x = baths, y = price)) +
    geom_point() +
    ggtitle("Number of Bathrooms vs Price")
  
  ggplot(data, aes(x = beds, y = price)) +
    geom_point() +
    ggtitle("Number of Bedrooms vs Price")
  
  ggplot(data, aes(x = sq__ft, y = price)) +
    geom_point() +
    ggtitle("Surface of the House vs Price")
  
  # 5. Build a simple regression model explaining the price of the house from its surface.
  
  simple_model <- lm(price ~ sq__ft, data)
  summary(simple_model)
  
  # 6. Plot the scatter plot of the observations against predictions, and give the correlation coefficient between the two data series.
  
  predictions <- predict(simple_model)
  data$predictions <- predictions
  cor(data$price, data$predictions)
  
  ggplot(data, aes(x = predictions, y = price)) +
    geom_point() +
    ggtitle("Observations vs Predictions")
  
  # 7. Build a multiple regression model explaining the price of the house from its number of bathrooms, its number of bedrooms, and its surface.
  
  multiple_model <- lm(price ~ baths + beds + sq__ft, data)
  summary(multiple_model)
  
  # 8. Plot the scatter plot of the observations against predictions, and give the correlation coefficient between the two data series.
  
  predictions_multiple <- predict(multiple_model)
  data$predictions_multiple <- predictions_multiple
  cor(data$price, data$predictions_multiple)
  
  ggplot(data, aes(x = predictions_multiple, y = price)) +
    geom_point() +
    ggtitle("Observations vs Predictions")
  