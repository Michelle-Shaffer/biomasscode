### LITSET for IRL ###

##Calculate weights:
#Convert length into cm 
table$cm <- table$AvgLength/10
table
#Calculate wwights in SeaLifeBase using CorpusChristi study (greatest n) in TL:
table$AvgWeight <- 0.00837*(table$cm^2.956)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)