### BRESPP for IRL ###

##Calculate weights:
#Convert SL into cm 
table$cm <- table$AvgLength/10
#Convert SL into FL used by GoM study
table$FL <- table$cm/0.911
#Use TL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.01190*(table$FL^3.2)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight, na.rm=TRUE)
table