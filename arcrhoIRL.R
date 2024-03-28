### ARCRHO for IRL ###
# archosargus rhomboidalis
#Lengths already binned in IRL length weights file
##Calculate weights:
#When choosing l/w parameters on FishBase, choose closest geographical study
#If something wrong with closest study (low replicates, etc.) then can use another in similar geographic region

#Convert SL into cm and then TL used by GoM study:
table$cm <- table$AvgLength/10 #if FIM data is in cm already take this out
table$TL <- (table$cm*1.168)+0 #add this info to summary table
table$FL <- (table$TL/1.094) #add this info to summary table
#change out a and b values depending on the species and length type conversion being done

#Use TL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.0179*(table$FL^3.102)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
table
weight <- sum(table$TotalWeight, na.rm=TRUE)