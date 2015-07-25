rankall <- function(outcome, num = "best") {
      ## Read outcome data
      outcome_data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
      state <- outcome_data$State
      state <- sort(unique(state))
      ## Check that the outcome is valid. 
      if (!(outcome %in% c("heart attack", "heart failure", "pneumonia")))
            stop("invalid outcome")
      
      ## Return a data frame with the hospital and state name. 
      outcol <- NULL
      if(outcome == "heart attack") outcol <- 11
      if(outcome == "heart failure") outcol <- 17
      if(outcome == "pneumonia") outcol <- 23
      
      # Convert data to numeric. 
      outcome_data[,outcol] <- suppressWarnings(as.numeric(outcome_data[,outcol]))
      outcome_data <- na.omit(outcome_data)
      
      sorted <- outcome_data[order(outcome_data[,7], outcome_data[,outcol], outcome_data[,2], na.last=TRUE), ]
      sorted[,outcol] <- suppressWarnings(as.numeric(sorted[,outcol]))
      
      hospital_id <- NULL
      state_id <- NULL
      
      for (i in 1:length(state)) {
            onestate <- sorted[which(sorted$State == state[i]),]
            hosnum <- nrow(onestate)
            
            ranky <- NULL
            ranky <- suppressWarnings(as.numeric(num))
            if(num == "best") ranky <- 1
            if(num == "worst") ranky <- nrow(onestate)
            
            if(ranky > hosnum) {
                  hospital_id[i] <- NA
                  state_id[i] <- state[i]
            } else {
                  hospital_id[i] <- onestate[ranky,2]
                  state_id[i] <- state[i]
            }
            
      }
      data.frame(hospital = hospital_id, state = state_id)
}