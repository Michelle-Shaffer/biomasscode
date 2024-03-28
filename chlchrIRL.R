### CHLCHR for IRL ###

##Calculate weights:
#Convert SL into cm and then TL used by GoM study:
table$cm <- table$AvgLength/10
table$TL <- (table$cm*1.31)+0.134
#Use TL in cm to calculate weights with FishBase equation:
table
table$AvgWeight <- 0.0185*(table$TL^2.858)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)