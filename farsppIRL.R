### FARSPP for IRL ###

# used farfantepenaeus aztecus
##Calculate weights:
#Convert length into cm 
table$cm <- table$AvgLength/10
table
#Calculate wwights in SeLifeBAse using Galveston study (greatest n) in TL:
#Enter length measures in SEaLifeBAse and record weight values it spits out
table$AvgWeight <- 0.00558*(table$cm^3.152)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight, na.rm=TRUE)