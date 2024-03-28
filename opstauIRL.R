### OPSTAU for IRL ###
#Lengths already binned in IRL length weights file
##Calculate weights:
#When choosing l/w parameters on FishBase, choose closest geographical study
#If something wrong with closest study (low replicates, etc.) then can use another in similar geographic region
# need to find a different study - measurement type not defined
# Wilson et al. 1982
# Hilton Head South Carolina

#Convert SL into cm and then TL used by GoM study:
table$cm <- table$AvgLength/10 #if FIM data is in cm already take this out
 #add this info to summary table
#change out a and b values depending on the species and length type conversion being done
table

#Use TL in cm to calculate weights on FishBase:
#Use equation on FishBase to determine weights
table$AvgWeight <- 4.98*exp(0.017*table$cm)
# this is the equation format direction from the study
# format was strange here
# alternatively could you gulf toad fish from mexico (closest location with SL measurements (none of the other measurements have length-length relationship info))
# table$AvgWeight <- 0.018*(table$cm^3.151)# a = 0.018, b = 3.151
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
weight <- sum(table$TotalWeight, na.rm=TRUE)