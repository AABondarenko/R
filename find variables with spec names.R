ola <- grep( "^IL", names(training), value=TRUE) # find names of all columns starting with IL
small_data_set <- subset(training, select=ola) # susbset based on these names