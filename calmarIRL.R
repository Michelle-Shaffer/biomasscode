### CALMAR for IRL ###

# callinectes marginatus
### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert CW into cm:
table$cm <- table$AvgLength/10

#Use CW in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.116995*(table$cm^2.775)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)