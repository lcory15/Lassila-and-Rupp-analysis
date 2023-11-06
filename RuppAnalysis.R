# libraries used
library(tidyverse)

# datasets loaded in
Pre_survey_revised <- read.csv("https://raw.githubusercontent.com/lcory15/Lassila-and-Rupp-analysis/main/pre_survey_rupp_revised.csv")
Post_survey_revised <- read.csv("https://raw.githubusercontent.com/lcory15/Lassila-and-Rupp-analysis/main/post_survey_rupp_revised.csv")

# removing unnecessary columns
Pre_survey_revised <- select(Pre_survey_revised, -(1:29))
Post_survey_revised <- select(Post_survey_revised, -(1:29))

# joining the two tables
combined_tables <- merge(Pre_survey_revised, Post_survey_revised, by = "UniqueID")

# paired t-tests and adjustments for multiple comparisons (multiplying each p-value times six)
t.testQ1 <- t.test(combined_tables$PreQ1, combined_tables$PostQ1, paired = TRUE)
t.testQ1
1*6 = 1

t.testQ2 <- t.test(combined_tables$PreQ2, combined_tables$PostQ2, paired = TRUE)
t.testQ2
.09545*6 = .5727

t.testQ3 <- t.test(combined_tables$PreQ3, combined_tables$PostQ3, paired = TRUE)
t.testQ3
.05093*6 = .30558

t.testQ4 <- t.test(combined_tables$PreQ4, combined_tables$PostQ4, paired = TRUE)
t.testQ4
1*6 = 1

t.testQ5 <- t.test(combined_tables$PreQ5, combined_tables$PostQ5, paired = TRUE)
t.testQ5
.169*6 = 1

t.testQ6 <- t.test(combined_tables$PreQ6, combined_tables$PostQ6, paired = TRUE)
t.testQ6
.08052*6 = .48312






