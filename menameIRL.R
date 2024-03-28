### MENAME for IRL ###

### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm and then TL used by 2nd USA study:
table$cm <- table$AvgLength/10
table$TL <- table$cm/0.862
#Use TL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.00497*(table$TL^3.26)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight, na.rm=TRUE)
table