library(haven)
csew1314teachingopen <- read_sav("ESSEX_Msc_DataScience/3_Numerical_statistical_analysis/UKDA-8011-spss/spss/spss24/csew1314teachingopen.sav")
View(csew1314teachingopen)

# Check the levels of the age group variable
table(csew1314teachingopen$agegrp7)

# Check the levels of the victim variable
table(csew1314teachingopen$bcsvictim)

# Create the subset for individuals who are 75+ and were victims of crime
crime_75victim <- subset(csew1314teachingopen, as_factor(agegrp7) == "75+" & bcsvictim == 1)

# Save the subset as a new dataset
saveRDS(crime_75victim, file = "crime_75victim.rds")

# Save it as a CSV file
write.csv(crime_75victim, file = "crime_75victim.csv", row.names = FALSE)
