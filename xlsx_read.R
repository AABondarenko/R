library(xlsx)

rowind <- 18:23
colind <- 7:15

dat <- read.xlsx("./data quiz 1//gas.xlsx", sheetIndex = 1, colIndex = colind, rowIndex = rowind)