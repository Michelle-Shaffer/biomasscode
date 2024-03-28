### SYMPLA for IRL ###

# symphurus plagiusa
### For other years ###
#Determine length binning in Species length binnning code file
##Calculate weights:
#Convert SL into cm:
table$cm <- table$AvgLength/10
table$TL <- (table$cm*1.067) #add this info to summary table
#change out a and b values depending on the species and length type conversion being done

# used Stevens anchoa mitch value, this uses the loge equation
# loge(wt)=loge(TL)
# so the new equation when using natural log is W=e^ln(a)+b⋅ln(L)
# which looks like this in R W <- exp(log(a) + b * log(L))

#Use TL in cm to calculate weights on FishBase:
table
table$AvgWeight <- 0.0148*(table$TL^2.894)
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
sum(table$TotalWeight)