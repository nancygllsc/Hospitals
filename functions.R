best <- function(state, outcome) {
    ## Read outcome data
    data<-read.csv("outcome-of-care-measures.csv", colClasses = "character")
    filterbyState= filter(data,data$State == state)
    if (outcome == "Heart Failure"){
        #HeartFailure<-Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure
        filter(filterbyState,
           as.numeric(Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure)==
               (min(as.numeric(filterbyState$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure),na.rm = TRUE)))$Hospital.Name
    }else if (outcome == "Heart Attack"){
            #HeartAttack<-Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack
            filter(filterbyState,
                   as.numeric(Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack)==
                       (min(as.numeric(filterbyState$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack),na.rm = TRUE)))$Hospital.Name
    }else if (outcome== "Pneumonia"){
         #Pneumonia_<- Pneumonia-Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia
         filter(filterbyState,
                as.numeric(Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia)==
                    (min(as.numeric(filterbyState$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia),na.rm = TRUE)))$Hospital.Name
        }
}

rankhospital <- function(state, outcome, num = "best") {
    ## Read outcome data 
    ## Check that state and outcome are valid 
    ## Return hospital name in that state with the given rank ## 30-day death rate 
    #min -> best
    #max -> worse 
    #rank -> by number of hospitals in the state 


    }

    

         
     
    ## Check that state and outcome are valid
    ## Return hospital name in that state with lowest 30-day death
    ## rate

#open data
#data<-read.csv("outcome-of-care-measures.csv", colClasses = "character")
#select the state
#State<- subset(data,State == "FL")
#select outcome
#hospital<- data[2]
#state <data[7]
#heart attack (mortality rates)<- data[11]
#lower heart attack (mortality rates)<- data[13]
#Upper.Mortality heart attack (mortality rates) <-data[14]
#heart failure (mortality rates)<- data[17]
#upper- heart failure <- data[19]
#lower- heart failure <- data[20]
#Pneumonia - mortality rate <- data[23]
#pneumonia - lower <- data[25]
#Pneumonia -upper <- data[26]
#min(filterbyState$Lower.Mortality.Estimate...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack,na.rm = TRUE)
#code:
#filterbyState= filter(data,State == "FL")
#filterbyOutcome=filter(filterbyState,  
                       min(select(Lower.Readmission.Estimate...Hospital.30.Day.Readmission.Rates.from.Heart.Failure ))
#filterbyLowerMortalityRate=
#min(filterbyState$Lower.Mortality.Estimate...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack,na.rm = TRUE)
#filter(filterbyState,Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack==(min(filterbyState$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack,na.rm = TRUE)))
#filter(filterbyState,Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack==(min(filterbyState$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack,na.rm = TRUE)))$Hospital.Name