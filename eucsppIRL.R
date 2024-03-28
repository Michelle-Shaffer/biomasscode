### EUCSPP IRL ###

# use most common eucinostomus spp. - eucinostomus harengulus
##Calculate weights:
#Convert SL into cm 
table$cm <- table$AvgLength/10
#Calculate wwights in FishBase using already in SL:
table
table$AvgWeight <- 0.017*(table$cm^3.177)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight, na.rm=TRUE)