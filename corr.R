corr <- function(directory, threshold = 0) {
      filenames <- list.files(directory,pattern="*.csv",full.names = TRUE)
      correlate <- vector("numeric", length=0)
      comp <- complete(directory)
      for(i in 1:length(filenames)) {
            if (comp[i,"nobs"] > threshold) {
                  readings <- read.csv(filenames[i])
                  sulf <- readings[,"sulfate"]
                  nitr <- readings[,"nitrate"]
                  sulfc <- sulf[complete.cases(sulf,nitr)]
                  nitrc <- nitr[complete.cases(sulf,nitr)]
                  correlate <- append(correlate, cor(sulfc,nitrc)) 
            }     
      }
      correlate
}