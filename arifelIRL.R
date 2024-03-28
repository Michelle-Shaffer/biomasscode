### ARIFEL for IRL ###

### for all years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm, use Yucatan study already in SL so no further conversions
table$cm <- table$AvgLength/10
table
#Calculate weights with equation on FishBase
table$AvgWeight <- 0.00700*(table$cm^3.249)
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight, na.rm=TRUE)