### ELOSPP for IRL ###

# elops spp., but used elops saurus code
### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm and then FL used by Fishbase:
table$cm <- table$AvgLength/10 #if FIM data is in cm already take this out
table$FL <- (table$cm/0.983)-0 #add this info to summary table
#change out a and b values depending on the species and length type conversion being done
table

#Use FL in cm to calculate weights on FishBase:
#Use equation on FishBase to determine weights:
table$AvgWeight <- 0.00799*(table$FL^2.968)
#change out a and b values depending on species and study
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
weight <- sum(table$TotalWeight, na.rm=T)