rankhospital <- function(state, outcome, num = "best") {
      ## Read outcome data
      outcome_data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
      
      ## Check that state and outcome are valid. 
      if(!(state %in% outcome_data$State))
            stop("invalid state")
      if (!(outcome %in% c("heart attack", "heart failure", "pneumonia")))
            stop("invalid outcome")
      
      ## Return hospital name in that state with the given rank
      ## 30-day death rate
      outcol <- NULL
      if(outcome == "heart attack") outcol <- 11
      if(outcome == "heart failure") outcol <- 17
      if(outcome == "pneumonia") outcol <- 23
      
      # Convert data to numeric. 
      outcome_data[,outcol] <- suppressWarnings(as.numeric(outcome_data[,outcol]))
      outcome_data <- na.omit(outcome_data)
      ## Subset to the specific state.
      subout <- subset(outcome_data, State==state)
      
      # Returning the name of the desired hospital.
      ## Orders the data from best to worst. 
      subout <- subout[order(subout[,outcol], subout[,2], na.last=TRUE),2]
      subout <- na.omit(subout)
      
      ## Returns best and worst. 
      if(num == "best") num <- 1
      if(num == "worst") num <- length(subout)
      
      ## Excludes values that are too large.
      if (num > length(subout)) return(NA)
      
      ## Returns the requested hospital rank. 
      subout[num]
}