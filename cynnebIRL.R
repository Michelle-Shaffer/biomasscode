### CYNNEB for IRL ###

#Lengths already binned in IRL length weights file

##Calculate weights:

#When choosing l/w parameters on FishBase, choose closest geographical study

#If something wrong with closest study (low replicates, etc.) then can use another in similar geographic region

#Convert SL into cm and then TL used by GoM study:

table$cm <- table$AvgLength/10 #if FIM data is in cm already take this out

#change out a and b values depending on the species and length type conversion being done

table

#Use TL in cm to calculate weights on FishBase:

#Use equation on FishBase to determine weights

table$AvgWeight <- 0.01500*(table$cm^2.946)

#in above equation a=0.01500 and b=2.946, change out a and b values depending on species and study

#Calculate total weights:

table$TotalWeight <- table$AvgWeight*table$NumOfTotal

weight <- sum(table$TotalWeight, na.rm=TRUE)

