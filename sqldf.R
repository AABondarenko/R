library(sqldf)
acs <- read.table(file = "./Getting and cleaning data/quiz 2/ss06pid.csv", header = TRUE, sep = ",")

sqldf("select pwgtp1 from acs where AGEP < 50")