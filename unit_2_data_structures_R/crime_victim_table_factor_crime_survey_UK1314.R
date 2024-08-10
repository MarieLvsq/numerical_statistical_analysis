library(haven)
csew1314teachingopen <- read_sav("ESSEX_Msc_DataScience/3_Numerical_statistical_analysis/UKDA-8011-spss/spss/spss24/csew1314teachingopen.sav")
View(csew1314teachingopen)

# Create a frequency table for the bcsvictim variable
crime_experience_table <- table(csew1314teachingopen$bcsvictim)

# View the frequency table
print(crime_experience_table)

# Check if bcsvictim is a factor
is.factor(csew1314teachingopen$bcsvictim)

# Convert bcsvictim to a factor and label the levels
csew1314teachingopen$bcsvictim <- as_factor(csew1314teachingopen$bcsvictim)

# Label the levels
levels(csew1314teachingopen$bcsvictim) <- c("No", "Yes")

# Check the frequency table again with the factor variable
crime_experience_table_factor <- table(csew1314teachingopen$bcsvictim)
print(crime_experience_table_factor)
