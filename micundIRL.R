### MICUND for IRL ###

##Calculate weights:
#Convert SL into cm and then TL used by GoM study:
table$cm <- table$AvgLength/10
table$TL <- table$cm/0.8
#Use TL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.00519*(table$TL^3.148)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)