library(XML)

f_url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"

## parse:
doc <- xmlTreeParse(f_url, useInternal = TRUE)

## load node that is needed:
codes <- xpathSApply(xmlRoot(doc), "//zipcode", xmlValue)
codes <- as.numeric(codes)

## count codes that are needed
length(codes[codes == 21231])