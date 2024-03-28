### DASSAY for IRL ###

#Lengths already binned in IRL length weights file

##Calculate weights:

#When choosing l/w parameters on FishBase, choose closest geographical study

#If something wrong with closest study (low replicates, etc.) then can use another in similar geographic region

#NOTE: rays are measured by wing spread, not traditional fish measurements

#Convert WL into cm

table$cm <- table$AvgLength/10 #if FIM data is in cm already take this out

#in above line of code b=1.126 and a=0.4142

#change out a and b values depending on the species and length type conversion being done

table

#Use WL in cm to calculate weights on FishBase:

#Use equation on FishBase to determine weights

table$AvgWeight <- 0.00001892*(table$cm^3.2275)

#in above equation a=0.00001892 and b=3.2275, change out a and b values depending on species and study

#Calculate total weights:

table$TotalWeight <- table$AvgWeight*table$NumOfTotal

weight <- sum(table$TotalWeight, na.rm=TRUE)

