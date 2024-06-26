### ANCMIT for IRL ###
#Lengths already binned in IRL length weights file
##Calculate weights:
#When choosing l/w parameters on FishBase, choose closest geographical study
#If something wrong with closest study (low replicates, etc.) then can use another in similar geographic region

#Convert SL into cm and then TL used by GoM study:
table$cm <- table$AvgLength/10 #if FIM data is in cm already take this out
table$TL <- (table$cm*1.126)+0.4142 #add this info to summary table
#change out a and b values depending on the species and length type conversion being done

# used Stevens anchoa mitch value, this uses the loge equation
# loge(wt)=loge(TL)
# so the new equation when using natural log is W=e^ln(a)+b⋅ln(L)
# which looks like this in R W <- exp(log(a) + b * log(L))

#Use TL in cm to calculate weights on FishBase:
table
table$AvgWeight <- exp(log(2.919) + (-11.256) * log(table$TL))
table
#Calculate total weights:
table$TotalWeight <- table$AvgWeight*table$NumOfTotal
table
weight <- sum(table$TotalWeight, na.rm=TRUE)
