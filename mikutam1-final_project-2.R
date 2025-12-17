## Load packages
# NOTE: Run base.R if these commands return an error!
library(readr)


# set working directory
setwd("/courses/STA145/mikutam1")

# Load the data
data <- read_delim("data.csv")

table(data$rachel_mc)
summary(data$rachel_mc)

mean(data$cp_visit, na.rm = TRUE)
sd(data$cp_visit, na.rm = TRUE)
summary(data$cp_visit)

tapply(data$cp_visit, data$rachel_mc, mean)
tapply(data$cp_visit, data$rachel_mc, sd)

boxplot(data$cp_visit ~ data$rachel_mc, data = data)

data <- read.csv("data.csv")
anova_model <- aov(data$cp_visit ~ data$rachel_mc, data = data)
summary(anova_model)
