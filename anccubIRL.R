### ANCCUB for IRL ###

# Anchoa cubana
### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm:
table$cm <- table$AvgLength/10

# used anchoa mitch value since most common anchovy in system and nothing on Fishbase

#Use SL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.01710*(table$cm^2.814)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
weight <- sum(table$TotalWeight, na.rm=TRUE)