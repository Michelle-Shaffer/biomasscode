### ORTCHR for IRL ###

##Calculate weights:
#Convert SL into cm and then FL used by Southern Florida study:
table$cm <- table$AvgLength/10
table$FL <- table$cm/0.886
#Use TL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.0149*(table$FL^3.189)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)
