#in R we can Quantify bias of our data by comparing
#the actual outcome with the predicted outcome
#Bias function find the average amount that the actual outcome ->
# is greater than the predict outcome which included in sim design package
#if the result equal or near to zero then the data isn't biased
#but if the value is big then the data might be biased.
#next we will use bias function to compare forcasted tempreatur with actual
#tempreature
library(SimDesign)
actual_temp <- c(55.6 , 67.9 , 13.4 , 12.3)
predicted_temp <- c(12.3,56.3,30.4,60.1)
bias(actual_temp , predicted_temp)
# from the data above there is bias in our data
# which means the predicted temp is bigger than the actual tempreature

actual_sales <-c(200 , 300 , 150, 250,150, 300)
predicted_sales<- c(150,203,137,247,116, 287)
bias(actual_sales , predicted_sales)
#the out come is 35
#which means the the actual sales is more bigger than the predicted sales