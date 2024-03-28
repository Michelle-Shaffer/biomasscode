### LEIXAN for IRL ###

### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm and then TL used by GoM study:
table$cm <- table$AvgLength/10
table$TL <- (table$cm*1.194)
#Use TL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.00921*(table$TL^3.072)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)