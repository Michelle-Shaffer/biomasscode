### DASSAB IRL ##

##Calculate weights:
#Convert length into cm 
table$cm <- table$AvgLength/10
table
#Calculate wwights in FishBase using Georgia study (greatest n):
table$AvgWeight <- 0.05*(table$cm^3.09)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)