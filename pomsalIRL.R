### POMSAL for IRL ###

# pomatomus saltatrix
### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm:
table$cm <- table$AvgLength/10
table$TL <- (table$cm/0.870) #add this info to summary table
#change out a and b values depending on the species and length type conversion being done

# used Stevens anchoa mitch value, this uses the loge equation
# loge(wt)=loge(TL)
# so the new equation when using natural log is W=e^ln(a)+b⋅ln(L)
# which looks like this in R W <- exp(log(a) + b * log(L))

#Use TL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.01087*(table$TL^3.06)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)