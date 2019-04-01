
# Before you start RUN:
rm(list = ls())

# Load packages
library(ggplot2)

#--------------------#
#### Instructions ####
#--------------------#

# 1. Load data by running the code below
# whr <- read.csv("PATH/TO/DATA/IN/YOUR/COMPUTER/whr_panel.csv",header = T)
  # TIP: Make sure to use the path in your computer

whr <- read.csv("C:/Users/Leonardo/Desktop/R training - Lab 0/Data/whr_panel.csv",header = T)


# 2. Create a vector called RwaBorderCountries containing 
# countries that border Rwanda using the funciton c() 
  # TIPS:
    # Remeber to use quotes since this is a string
    # You can use unique(whr$country) to see the exact names in the data
    # Remember to store the vector in a new object

RwaBorderCountries <- c("Rwanda",
                        "Congo (Kinshasa)", 
                        "Uganda", 
                        "Tanzania", 
                        "Burundi")

# 3. Create new data called whrRwaBord frame with just the countries in the vector
# you just created
  # TIPS:
    # You can use the function subset(whr, country %in%  RwaBorderCountries)
    # Make sure the names are exactly the same as the data

whrRwaBord <- subset(whr, country %in%  RwaBorderCountries)

# 4. Plot happy score for those countris using the function below
ggplot(data = whrRwaBord,
       aes(x = year, 
           y = happy_score, 
           col = country))+
  geom_line() +
  geom_point()


