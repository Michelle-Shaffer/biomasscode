### CITSPI for IRL ###

### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm: (this study uses TL but has no conversion info)
table$cm <- table$AvgLength/10

#Use TL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.0107*(table$cm^2.974)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)