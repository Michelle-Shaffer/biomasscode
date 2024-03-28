### FARDUO for IRL ###

##Calculate weights:
#Convert length into cm 
table$cm <- table$AvgLength/10
table
#Calculate wwights in SeaLifeBase using Corpus Christi study in TL:
table$AvgWeight <- 0.0057*(table$cm^3.137)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)