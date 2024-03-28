### LIMPOL for IRL ###

# Limulus polyphemus
### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert PW into cm:
table$cm <- table$AvgLength/10 #if FIM data is in cm already take this out
table

#Use PW in cm to calculate weights on SeaLifeBASE:
#Use equation on FishBase to determine weights:
table$AvgWeight <- 0.16077*(table$cm^2.890)
#change out a and b values depending on species and study
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
weight <- sum(table$TotalWeight, na.rm=T)
