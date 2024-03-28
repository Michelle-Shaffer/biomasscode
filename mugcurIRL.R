### MUGCUR for IRL ###
#Lengths already binned in IRL length weights file
##Calculate weights:
#When choosing l/w parameters on FishBase, choose closest geographical study
#If something wrong with closest study (low replicates, etc.) then can use another in similar geographic region

#Conver to cm and to FL used in North Havana study:
table$cm <- table$AvgLength/10 
table$FL <- (table$cm-0.58)/0.84
table

#Use FL in cm to calculate weights on FishBase:
#Use equation on FishBase to determine weights
table$AvgWeight <- 0.0268*(table$FL^2.81)

#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
weight <- sum(table$TotalWeight, na.rm=TRUE)