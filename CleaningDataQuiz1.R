## CLeaning Data Quiz 1 
file= "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(file,destfile = "./HousingStateIdaho.cvs",method = "curl")
download<- read.csv("HousingStateIdaho.cvs",colClasses = "character")
#question 1. How many properties are worth $1,000,000 or more?- answer: 53 
count(filter(download,as.numeric(download$VAL)==24))
sum(download$VAL==24 & !is.na(download$VAL))
str(filter(download,as.numeric(download$VAL)==24))# this option shows all columns
#question 3.What is the value of: sum(dat$Zip*dat$Ext,na.rm=T)
    #Download the Excel spreadsheet on Natural Gas Aquisition,Read rows 18-23 and columns 7-15 into R and assign the result to a variable called
    #requires xlsx package 
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx",destfile = "./NaturalGasAquisition.xlsx",method = "curl")
dataxlsx<- read.xlsx("NaturalGasAquisition.xlsx",sheetIndex = 1, header = TRUE)[17:22,7:14] 
#counting start at 0 so the from is shifted. 
dat=read.xlsx("NaturalGasAquisition.xlsx",sheetIndex = 1,  rowIndex = 18:23,colIndex = 7:15,header = TRUE)
sum(dat$Zip*dat$Ext,na.rm=T)
#question 4. 
    #download package  >>>> install.packages("XML")
docXML <-  xmlTreeParse("http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml",useInternal = TRUE)
rootnode <- xmlRoot(docXML)
sum(xpathSApply(rootnode,"//zipcode",xmlValue) == 21231) 
