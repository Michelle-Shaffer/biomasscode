### ANCHEP for IRL ###

##Calculate weights:
#Convert SL into cm and then TL used by GoM study:
table$cm <- table$AvgLength/10
table$TL <- table$cm*1.211
#Use TL in cm to calculate weights using FishBase equation:
table$AvgWeight <- 0.01820*(table$TL^2.826)
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)
table