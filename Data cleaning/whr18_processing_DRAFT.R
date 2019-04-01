w18 <- read.csv(file.path("C:\\Users\\Leonardo\\Dropbox\\Work\\WB\\R Training\\R training\\Data\\World\\Raw",
                          "happiness_data_2018.csv"),
                header = T,
                stringsAsFactors = F)



keepVars <-   c("Country",
                "Region.indicator",
                #"year",
                #"Happiness.Rank",
                "Happiness_Index_2018",
                "Explained_GDPperCapita", 
                "Explained_SocialSupp",
                "Explained_LifeExp",
                "Explained_Freedom",
                "Explained_Corruption",
                "Explained_Generosity",
                "Dystopia_Comparison")

w18 <- w18[,keepVars]
w18$year <- 2018

newVar_names <-   c("country",
                    "region",
                    #"happy_rank",
                    "happy_score",
                    "gdp_pc", 
                    "family",
                    "health",
                    "freedom",
                    "trust_gov_corr",
                    "generosity",
                    "dystopia_res",
                    "year")
names(w18) <- newVar_names

c18 <- unique(w18$country)
#cpa <- unique(whr$country)

colOrder <-    c("country",
                    "region",
                    "year",
                    #"happy_rank",
                    "happy_score",
                    "gdp_pc", 
                    "family",
                    "health",
                    "freedom",
                    "trust_gov_corr",
                    "generosity",
                    "dystopia_res")
w18 <- w18[,colOrder]

w18$country[w18$country == "Hong Kong S.A.R. of China"] <-  "Hong Kong" 
w18$country[w18$country == "Taiwan Province of China"] <-  "Taiwan" 



panel18 <- data.table::rbindlist(list(whr, w18), fill = TRUE)

write.csv(panel18,
          file.path(finalData, "whr_panel_18.csv"),
          na = "",
          row.names = F)

