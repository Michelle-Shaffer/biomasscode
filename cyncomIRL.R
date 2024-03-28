### CYNCOM for IRL ###

# Cynoscion complex
### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm:
table$cm <- table$AvgLength/10

# used cynocion neb since more common and no info on Fishbase

#Use SL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.01500*(table$cm^2.946)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)