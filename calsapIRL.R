### CALSAP for IRL ###

##Calculate weights:
#Convert CL into cm and then CW used by GoM study:
table$cm <- table$AvgLength/10
table$CW <- (table$cm*0.415)+0.919
table
#Use TL in cm to calculate weights on SeaLifeBase:
table$AvgWeight <- 0.1256*(table$CW^2.639)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight, na.rm=TRUE)
