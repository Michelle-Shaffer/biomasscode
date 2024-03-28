### LAGRHO IRL ###

##Calculate weights:
#Convert SL into cm 
table$cm <- table$AvgLength/10
#Calculate wwights in FishBase using Tampa study (greatest n) already in SL:
table
table$AvgWeight <- 0.0269*(table$cm^3.11)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)