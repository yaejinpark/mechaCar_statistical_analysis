# Deliverable 1

# Load the dplyr package
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
mechacar_df <- read.csv(file="MechaCar_mpg.csv")

# Perform linear regression using the lm() function. 
# In the lm() function, pass in all six variables
mechacar_lr <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_df)

# Using the summary() function, 
# determine the p-value and the r-squared value for the linear regression model.
summary(mechacar_lr)

################################################################################

# Deliverable 2

# Import and read in the Suspension_Coil.csv file as a table
sc_table <- read.csv(file="Suspension_Coil.csv")

# Create a total_summary dataframe using the summarize() function to get the 
# mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- sc_table %>% summarize(psi_mean=mean(PSI), psi_med=median(PSI), psi_var=var(PSI), psi_sd=sd(PSI))

