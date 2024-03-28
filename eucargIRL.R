### EUCARG for IRL ###

### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm and then TL:
table$cm <- table$AvgLength/10
table$TL <- table$cm/0.819

#Use TL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.008*(table$TL^3.38)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)