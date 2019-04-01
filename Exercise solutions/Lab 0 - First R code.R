
# Load pacakges
library(ggplot2)

# Load data
whr <- read.csv(file.path(finalData,"whr_panel_18.csv"),header = T)

# Create a vector of countries that border Rwanda
RwaBorderCountries <- c("Rwanda",
                        "Congo (Kinshasa)", 
                        "Uganda", 
                        "Tanzania", 
                        "Burundi")

# Create new data frame with just the selected countries 
whrRwaBorC <- subset(whr, country %in%  RwaBorderCountries)

# Plot happy score for those countris
ggplot(data = whrRwaBorC,
       aes(x = year, y = happy_score, col = country))+
  geom_line() +
  geom_point()


