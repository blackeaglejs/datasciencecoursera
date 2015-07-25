complete <- function(directory, id = 1:332) {
      filenames <- list.files(directory,pattern="*.csv",full.names = TRUE)
      complete_obj <- data.frame()
      for(i in id) {
            rawCSV <- read.csv(filenames[i])
            sulf <- rawCSV[,"sulfate"]
            nitr <- rawCSV[,"nitrate"]
            completed <- sum(complete.cases(sulf,nitr))
            complete_obj <- rbind(complete_obj, c(i, completed))
      }
      colnames(complete_obj) <- c("id","nobs")      
      complete_obj
}