### POGCRO for IRL ###
#Lengths already binned in IRL length weights file
##Calculate weights:
#When choosing l/w parameters on FishBase, choose closest geographical study
#If something wrong with closest study (low replicates, etc.) then can use another in similar geographic region
# closest location - Rio de Janeiro Brazil

#Convert SL into cm and then TL used by GoM study:
table$cm <- table$AvgLength/10 #if FIM data is in cm already take this out
table$TL <- (table$cm*1.153) #add this info to summary table
#in above line of code b=1.153 and a=0
#change out a and b values depending on the species and length type conversion being done
table

#Use TL in cm to calculate weights on FishBase:
#Use equation on FishBase to determine weights
table$AvgWeight <- 0.00500*(table$TL^3.330)
#in above equation a=0.00500 and b=3.330, change out a and b values depending on species and study
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
weight <- sum(table$TotalWeight, na.rm=TRUE)