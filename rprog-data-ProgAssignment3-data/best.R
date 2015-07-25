best <- function(state,outcome) {
      ## Read outcome data
      outcome_data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
      
      ## Check that state and outcome are valid. 
      if(!(state %in% outcome_data$State))
            stop("invalid state")
      if (!(outcome %in% c("heart attack", "heart failure", "pneumonia")))
            stop("invalid outcome")
      
      ## Return the hospital name with the lowest 30 day death rate.
      ## Get the specific column of outcome data.
      outcol <- NULL
      if(outcome == "heart attack") outcol <- 11
      if(outcome == "heart failure") outcol <- 17
      if(outcome == "pneumonia") outcol <- 23
      
      ## Convert data to numeric. 
      outcome_data[,outcol] <- suppressWarnings(as.numeric(outcome_data[,outcol]))
      outcome_data <- na.omit(outcome_data)
      ## Subset to the specific state.
      subout <- subset(outcome_data, State==state)
      ## Return the name of the best hospital - it should be the max
      ## of the subsetted column. 
      subout <- subout[order(subout[,outcol], na.last=TRUE),2]
      subout <- na.omit(subout)
      
      subout[1]
      
      
}