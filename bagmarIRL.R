### BAGMAR for IRL ###

#Lengths already binned in IRL length weights file

##Calculate weights:

#When choosing l/w parameters on FishBase, choose closest geographical study

#If something wrong with closest study (low replicates, etc.) then can use another in similar geographic region

#Convert SL into cm:

table$cm <- table$AvgLength/10 #if FIM data is in cm already take this out

#change out a and b values depending on the species and length type conversion being done

table

#Use SL in cm to calculate weights on FishBase:

#Use equation on FishBase to determine weights

table$AvgWeight <- 0.04930*(table$cm^2.760)

#in above equation a=0.04930 and b=2.760, change out a and b values depending on species and study

#Calculate total weights:

table$TotalWeight <- table$AvgWeight*table$NumOfTotal

weight <- sum(table$TotalWeight, na.rm=TRUE)

