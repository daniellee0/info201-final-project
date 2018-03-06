# Read in all data tables for firearms

library(dplyr)
library(tidyr)
library(ggplot2)
library(maps)


twenty.04 <- read.csv("data/firearms.2004.csv", stringsAsFactors = FALSE)
twenty.05 <- read.csv("data/firearms.2005.csv", stringsAsFactors = FALSE)
twenty.06 <- read.csv("data/firearms.2006.csv", stringsAsFactors = FALSE)
twenty.07 <- read.csv("data/firearms.2007.csv", stringsAsFactors = FALSE)
twenty.08 <- read.csv("data/firearms.2008.csv", stringsAsFactors = FALSE)
twenty.09 <- read.csv("data/firearms.2009.csv", stringsAsFactors = FALSE)
twenty.10 <- read.csv("data/firearms.2010.csv", stringsAsFactors = FALSE)
twenty.11 <- read.csv("data/firearms.2011.csv", stringsAsFactors = FALSE)
twenty.12 <- read.csv("data/firearms.2012.csv", stringsAsFactors = FALSE)
twenty.13 <- read.csv("data/firearms.2013.csv", stringsAsFactors = FALSE)
twenty.14 <- read.csv("data/firearms.2014.csv", stringsAsFactors = FALSE)
twenty.15 <- read.csv("data/firearms.2015.csv", stringsAsFactors = FALSE)
twenty.16 <- read.csv("data/firearms.2016.csv", stringsAsFactors = FALSE)


# Wrangle firearms data into one table

# Rename all data tables with years

# Rename to represent 2004
colnames(twenty.04)[colnames(twenty.04)=="Total.murders1"] <- "Total.Murders.2004"
colnames(twenty.04)[colnames(twenty.04)=="Total.firearms"] <- "Total.Firearms.2004"


# Select relevant columns total murders, total murders by firearms, and state names
twenty.04.totals <- twenty.04 %>%
  select(State, Total.Firearms.2004, Total.Murders.2004)

# Rename to represent 2005
colnames(twenty.05)[colnames(twenty.05)=="Total.murders1"] <- "Total.Murders.2005"
colnames(twenty.05)[colnames(twenty.05)=="Total.firearms"] <- "Total.Firearms.2005" 


# Select relevant columns 
twenty.05.totals <- twenty.05 %>% 
  select(State, Total.Murders.2005, Total.Firearms.2005) 


# Rename to represent 2006
colnames(twenty.06)[colnames(twenty.06)=="Total.murders1"] <- "Total.Murders.2006"
colnames(twenty.06)[colnames(twenty.06)=="Total.firearms"] <- "Total.Firearms.2006"


# Select relevant columns 
twenty.06.totals <- twenty.06 %>% 
  select(State, Total.Murders.2006, Total.Firearms.2006)

# Rename to represent 2007
colnames(twenty.07)[colnames(twenty.07)=="Total.murders1"] <- "Total.Murders.2007"
colnames(twenty.07)[colnames(twenty.07)=="Total.firearms"] <- "Total.Firearms.2007"

# Select relevant columns 
twenty.07.totals <- twenty.07 %>% 
  select(State, Total.Murders.2007, Total.Firearms.2007)

# Rename to represent 2008
colnames(twenty.08)[colnames(twenty.08)=="Total.murders1"] <- "Total.Murders.2008"
colnames(twenty.08)[colnames(twenty.08)=="Total.firearms"] <- "Total.Firearms.2008"

# Select relevant columns 
twenty.08.totals <- twenty.08 %>% 
  select(State, Total.Murders.2008, Total.Firearms.2008)

# Rename to represent 2009
colnames(twenty.09)[colnames(twenty.09)=="Total.murders1"] <- "Total.Murders.2009"
colnames(twenty.09)[colnames(twenty.09)=="Total.firearms"] <- "Total.Firearms.2009"

# Select relevant columns 
twenty.09.totals <- twenty.09 %>% 
  select(State, Total.Murders.2009, Total.Firearms.2009)

# Rename to represent 2010
colnames(twenty.10)[colnames(twenty.10)=="Total.murders1"] <- "Total.Murders.2010"
colnames(twenty.10)[colnames(twenty.10)=="Total.firearms"] <- "Total.Firearms.2010"

# Select relevant columns 
twenty.10.totals <- twenty.10 %>% 
  select(State, Total.Murders.2010, Total.Firearms.2010)

# Rename to represent 2011
colnames(twenty.11)[colnames(twenty.11)=="Total.murders1"] <- "Total.Murders.2011"
colnames(twenty.11)[colnames(twenty.11)=="Total.firearms"] <- "Total.Firearms.2011"

# Select relevant columns 
twenty.11.totals <- twenty.11 %>% 
  select(State, Total.Murders.2011, Total.Firearms.2011)

# Rename to represent 2012
colnames(twenty.12)[colnames(twenty.12)=="Total.murders1"] <- "Total.Murders.2012"
colnames(twenty.12)[colnames(twenty.12)=="Total.firearms"] <- "Total.Firearms.2012"

# Select relevant columns 
twenty.12.totals <- twenty.12 %>% 
  select(State, Total.Murders.2012, Total.Firearms.2012)

# Rename to represent 2013
colnames(twenty.13)[colnames(twenty.13)=="Total.murders1"] <- "Total.Murders.2013"
colnames(twenty.13)[colnames(twenty.13)=="Total.firearms"] <- "Total.Firearms.2013"

# Select relevant columns 
twenty.13.totals <- twenty.13 %>% 
  select(State, Total.Murders.2013, Total.Firearms.2013)

# Rename to represent 2014
colnames(twenty.14)[colnames(twenty.14)=="Total.murders1"] <- "Total.Murders.2014"
colnames(twenty.14)[colnames(twenty.14)=="Total.firearms"] <- "Total.Firearms.2014"

# Select relevant columns 
twenty.14.totals <- twenty.14 %>% 
  select(State, Total.Murders.2014, Total.Firearms.2014)

# Rename to represent 2015
colnames(twenty.15)[colnames(twenty.15)=="Total.murders1"] <- "Total.Murders.2015"
colnames(twenty.15)[colnames(twenty.15)=="Total.firearms"] <- "Total.Firearms.2015"

# Select relevant columns 
twenty.15.totals <- twenty.15 %>% 
  select(State, Total.Murders.2015, Total.Firearms.2015)

# Rename to represent 2016
colnames(twenty.16)[colnames(twenty.16)=="Total.murders1"] <- "Total.Murders.2016"
colnames(twenty.16)[colnames(twenty.16)=="Total.firearms"] <- "Total.Firearms.2016"

# Select relevant columns 
twenty.16.totals <- twenty.16 %>% 
  select(State, Total.Murders.2016, Total.Firearms.2016) 
  

# Remove empty tables in twenty.04.totals


# Begin to join the tables 
join.04.05 <- full_join(twenty.04.totals, twenty.05.totals, by= "State") %>% 
  na.omit()


join.05.06 <- full_join(join.04.05, twenty.06.totals, by = "State") %>% 
  na.omit()

join.06.07 <- full_join(join.05.06, twenty.07.totals, by = "State") %>% 
  na.omit()

join.07.08 <- full_join(join.06.07, twenty.08.totals, by = "State") %>% 
  na.omit()

join.08.09 <- full_join(join.07.08, twenty.09.totals, by = "State") %>% 
  na.omit()

join.09.10 <- full_join(join.08.09, twenty.10.totals, by = "State") %>% 
  na.omit()

join.10.11 <- full_join(join.09.10, twenty.11.totals, by = "State")

join.11.12 <- full_join(join.10.11, twenty.12.totals, by = "State")

join.12.13 <- full_join(join.11.12, twenty.13.totals, by = "State") 

join13.14 <- full_join(join.12.13, twenty.14.totals, by = "State") 

join14.15 <- full_join(join13.14, twenty.15.totals, by = "State") 

join.final <- full_join(join14.15, twenty.16.totals, by = "State") %>% 
  filter(State != "District of Columbia", State != "Virgin Islands", State != "Guam", State != "U.S. Virgin Islands", State != "")






# Need to create a data frame for each state???

united.states. <- map_data("state")

colnames(united.states.)[colnames(united.states.)== "region"] <- "State"

lower.join.final <- sapply(join.final$State, tolower)

row.names(join.final) <- lower.join.final

levels(join.final$State) <- tolower(levels(join.final$State))

join.final$State <- lower.join.final

names(join.final) <- sub("Total.Firearms.", "", names(join.final))

gather.firearms <- gather(join.final, key = "Year", value = "Total.Firearms", starts_with(as.character(2)))

names(gather.firearms) <- sub("Total.Murders.", "", names(gather.firearms))

gather.final <- gather(gather.firearms, key = "Year", value = "Total.Murders", starts_with(as.character(2)))

cut.murder <- mutate(gather.final, Range = cut(as.numeric(gather.final$Total.Murders), c(0,10,20,30,40,50,100,200,300,400, 500, 1000, 2000, 3000), 
                                                      labels = c("0-10", "11-20", "21-30", "31-40", "41-50", "51-100",
                                                                 "101-200", "201-300", "301-400", "401-500", "501-1,000", "1,001-2,000", "2,001-3,000")))

cut.firearms <- mutate(gather.final, Range = cut(as.numeric(gather.final$Total.Firearms), c(0,10,20,30,40,50,100,200,300,400,500,1000,2000),
                                                        labels = c("0-10", "11-20", "21-30", "31-40", "41-50", "51-100", "101-200", "201-300",
                                                                   "301-400", "401-500", "501-1,000", "1,001-2,000")))


united.join.firearms <- full_join(cut.firearms, united.states., by = "State")

united.join.murders <- full_join(cut.murder, united.states., by = "State")



