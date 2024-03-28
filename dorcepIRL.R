### DORCEP for IRL ###

### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm and then TL:
table$cm <- table$AvgLength/10
table$TL <- 1.172*table$cm

#Use TL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.0141*(table$TL^2.89)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)