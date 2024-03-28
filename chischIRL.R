### CHISCH for IRL ###
# chilomycterus schoepfii 
#Lengths already binned in IRL length weights file

##Calculate weights:

#When choosing l/w parameters on FishBase, choose closest geographical study

#If something wrong with closest study (low replicates, etc.) then can use another in similar geographic region

#Convert SL into cm and then TL used by GoM study:

table$cm <- table$AvgLength/10 #if FIM data is in cm already take this out

table$TL <- (table$cm*1.178) #add this info to summary table

table$FL <- (table$TL*1.0) #add this info to summary table

#in above line of code b=1.178 and 1.0 respectively

#change out a and b values depending on the species and length type conversion being done

table

#Use FL in cm to calculate weights on FishBase:

#Use equation on FishBase to determine weights

table$AvgWeight <- 0.02360*(table$FL^3.124)

#in above equation a=0.02360 and b=3.124, change out a and b values depending on species and study

#Calculate total weights:

table$TotalWeight <- table$AvgWeight*table$NumOfTotal

weight <- sum(table$TotalWeight, na.rm=TRUE)

