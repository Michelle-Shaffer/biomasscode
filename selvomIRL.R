### SELVOM for IRL ###

### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm and TL:
table$cm <- table$AvgLength/10
table$TL <- table$cm*1.291
table$FL <- table$TL/1.218

#Use TL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.0196*(table$FL^3.076)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)