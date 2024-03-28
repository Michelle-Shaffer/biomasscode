### FLOCAR for IRL ###

# floridichthys carpio
### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm:
table$cm <- table$AvgLength/10

#Use SL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.019*(table$cm^3.02)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)