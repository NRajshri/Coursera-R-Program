

#Nimisha Rajshri
## 'directory' is a character vector of length 1 indicating
## the location of the CSV files

## 'pollutant' is a character vector of length 1 indicating
## the name of the pollutant for which we will calculate the
## mean; either "sulfate" or "nitrate".

## 'id' is an integer vector indicating the monitor ID numbers
## to be used

## Return the mean of the pollutant across all monitors list
## in the 'id' vector (ignoring NA values)



##Sample Test for pollutantmean


pollutantmean <- function(directory, pollutant, id){
  
  combined_file <- data.frame()
  
  specdata <- list.files(directory, full.names = TRUE )
  
  for (i in 1:25){
    combined_file <- rbind(combined_file, read.csv(specdata[i]))
  }
  # combined_file
  names(combined_file)
  
  y <- combined_file
  
  
  readFile <- numeric(0)
  
  for(i in y$ID){
    
    readFile <- y[which(y[,"ID"] == id), pollutant]
    
    
  }
  
  readFile
  z = mean(readFile, na.rm = TRUE)
  z
} 


pollutantmean("specdata", "nitrate", 23)