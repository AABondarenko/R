pollutantmean <- function(directory, pollutant, id = 1:332) {
    all = numeric()
    for (i in id) {
        p <- read.csv(paste('~/R/assignment 1/', directory, '/', sprintf("%03d", i), '.csv', sep=""), header = TRUE)        
        notNA <- !is.na(p[, pollutant])
        all <- c(all, p[notNA, pollutant])

    }
    mean(all)
}