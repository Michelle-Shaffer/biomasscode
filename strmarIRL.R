### STRMAR for IRL ###

# strongylura  marina
### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm:
table$cm <- table$AvgLength/10

#Use SL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.00110*(table$cm^3.108)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)