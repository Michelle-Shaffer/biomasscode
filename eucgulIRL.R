### EUCGUL IRL ###

##Calculate weights:
#Convert SL into cm and then TL used by GoM study:
table$cm <- table$AvgLength/10
table$TL <- table$cm/0.818
#Use TL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.035*(table$TL^2.83)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight, na.rm=TRUE)