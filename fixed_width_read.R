filepath <- "./Getting and cleaning data/quiz 2/wksst8110.for"
# width were counted manually via TextWrangler
for_file <- read.fwf(file = filepath, widths = c(-1,9,-5,4,4,-5,4,4,-5,4,4,-5,4,4), skip = 4)

sum(for_file$V4)