pollutantmean <- function(directory, pollutant, id = 1:332) {
      filenames <- list.files(directory, pattern="*.csv", full.names = TRUE)
      pollutantdata <- vector()
      for(i in id) {
            rawCSV <- read.csv(filenames[i])
            pollutantdata <- append(pollutantdata, rawCSV[,pollutant])
      }
      mean(pollutantdata, na.rm = TRUE)
}