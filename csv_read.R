## f_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
## download.file(f_url, destfile = "./data quiz 1//Idaho2006.csv", method = "curl")

idaho <- read.csv("./data quiz 1//Idaho2006.csv")
values <- houses$VAL[!is.na(houses$VAL)]

