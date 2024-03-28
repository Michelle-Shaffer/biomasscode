### CHEMYD for IRL ###

### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm 
table$cm <- table$AvgLength/10

#using parameters in Hirth 1982 paper
table
table$AvgWeight <- (10^(-2.613+(2.341*log10(table$cm))))*1000
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)



