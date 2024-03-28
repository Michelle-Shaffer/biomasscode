### PARALB for IRL ###

# Paralichthys albigutta
### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm:
table$cm <- table$AvgLength/10

# used most common paralichthyes since nothing on Fishbase

#Use SL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.00562*(table$cm^3.21)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)