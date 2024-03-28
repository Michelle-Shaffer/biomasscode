### MUGRUB for IRL ###
#Lengths already binned in IRL length weights file
##Calculate weights:
#When choosing l/w parameters on FishBase, choose closest geographical study
#If something wrong with closest study (low replicates, etc.) then can use another in similar geographic region

#Conver to cm and to TL used in  study (greatest n):
#No length conversion info for this species so use conversion parameters from MUGCEP
table$cm <- table$AvgLength/10 
table$TL <- (table$cm*1.240)+0.461
table

#Use TL in cm to calculate weights on FishBase:
#Use equation on FishBase to determine weights
table$AvgWeight <- 0.0183*(table$TL^2.82)

#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
weight <- sum(table$TotalWeight, na.rm=TRUE)