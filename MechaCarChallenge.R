# Deliverable 1 - Linear Regression

# Load the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
mechacar_df = read.csv(file="MechaCar_mpg.csv")

# Perform linear regression using the lm() function. 
# In the lm() function, pass in all six variables
mechacar_lr = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_df)

# Using the summary() function, 
# determine the p-value and the r-squared value for the linear regression model.
summary(mechacar_lr)

################################################################################

# Deliverable 2