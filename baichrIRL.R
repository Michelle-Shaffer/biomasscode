### BAICHR for IRL ###

### for all years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm 
table$cm <- table$AvgLength/10
table
#Calculate wwights in FishBase using Yucatan study (greatest n) already in SL:
table$AvgWeight <- 0.01740*(table$cm^3.053)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)