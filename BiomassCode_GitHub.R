# pull this length data you just pulled form the database into R
ld <- read.csv("Length_Data_Present_Day_Model.csv")
# add gear to dataset
all_dat <- read.csv("FIM_PresentDay_Model_Data_ML_BR_sub_07_05_2023.csv")
# subset to just reference and gear
gear <- all_dat[,c(2,5)]
gear_no_dup <- gear[!duplicated(gear[c('Reference')]), ]
# left join to ld
library('dplyr')
ld_gear <- left_join(ld, gear_no_dup, by = 'Reference')
str(ld_gear)
ld_gear$Gear <- as.factor(as.character(ld_gear$Gear))
levels(ld_gear$Gear)

# creating new species list based off of all the species in the master dataset. 
# I can then select which species I want to keep from there
all_dat_spp <- unique(all_dat$Scientificname)
Scientificname <- as.character(all_dat_spp)

#Create data frame with list of species and column of 0s for weights
wtotal <- data.frame(Scientificname)
wtotal$Weights <- rep(0, length(Scientificname))# one column species one column weights

# now how do I subset to the species I want?
# I should probably start a new spp list for the present-day model
# this data does not have sampling date in it, although reference has the date in it

# once you have the length data come back to this
# subset length data to each year
ld1998 <- subset(ld_gear, grepl(1998, ld_gear$Reference)==TRUE)
# thank worked, change all below
ld1999 <- subset(ld_gear, grepl(1999, ld_gear$Reference)==TRUE)
ld2000 <- subset(ld_gear, grepl(2000, ld_gear$Reference)==TRUE)
ld2001 <- subset(ld_gear, grepl(2001, ld_gear$Reference)==TRUE)
ld2002 <- subset(ld_gear, grepl(2002, ld_gear$Reference)==TRUE)
ld2003 <- subset(ld_gear, grepl(2003, ld_gear$Reference)==TRUE)
ld2004 <- subset(ld_gear, grepl(2004, ld_gear$Reference)==TRUE)
ld2005 <- subset(ld_gear, grepl(2005, ld_gear$Reference)==TRUE)
ld2006 <- subset(ld_gear, grepl(2006, ld_gear$Reference)==TRUE)
ld2007 <- subset(ld_gear, grepl(2007, ld_gear$Reference)==TRUE)
ld2008 <- subset(ld_gear, grepl(2008, ld_gear$Reference)==TRUE)
ld2009 <- subset(ld_gear, grepl(2009, ld_gear$Reference)==TRUE)
ld2010 <- subset(ld_gear, grepl(2010, ld_gear$Reference)==TRUE)
ld2011 <- subset(ld_gear, grepl(2011, ld_gear$Reference)==TRUE)
ld2012 <- subset(ld_gear, grepl(2012, ld_gear$Reference)==TRUE)
ld2013 <- subset(ld_gear, grepl(2013, ld_gear$Reference)==TRUE)
ld2014 <- subset(ld_gear, grepl(2014, ld_gear$Reference)==TRUE)
ld2015 <- subset(ld_gear, grepl(2015, ld_gear$Reference)==TRUE)
ld2016 <- subset(ld_gear, grepl(2016, ld_gear$Reference)==TRUE)
ld2017 <- subset(ld_gear, grepl(2017, ld_gear$Reference)==TRUE)  
ld2018 <- subset(ld_gear, grepl(2018, ld_gear$Reference)==TRUE)
ld2019 <- subset(ld_gear, grepl(2019, ld_gear$Reference)==TRUE)
ld2020 <- subset(ld_gear, grepl(2020, ld_gear$Reference)==TRUE)

#Separate by gear type
# update for extended time span (1998-2020)
# also, what about the 23 gear type? that should be included
ld1998g20 <- subset(ld1998, ld1998$Gear == 20)
ld1998g300 <- subset(ld1998, ld1998$Gear == 300)
ld1998g160 <- subset(ld1998, ld1998$Gear == 160)
ld1998g301 <- subset(ld1998, ld1998$Gear == 301)

ld1999g20 <- subset(ld1999, ld1999$Gear == 20)
ld1999g300 <- subset(ld1999, ld1999$Gear == 300)
ld1999g160 <- subset(ld1999, ld1999$Gear == 160)
ld1999g301 <- subset(ld1999, ld1999$Gear == 301)

ld2000g20 <- subset(ld2000, ld2000$Gear == 20)
ld2000g300 <- subset(ld2000, ld2000$Gear == 300)
ld2000g160 <- subset(ld2000, ld2000$Gear == 160)
ld2000g301 <- subset(ld2000, ld2000$Gear == 301)

ld2001g20 <- subset(ld2001, ld2001$Gear == 20)
ld2001g300 <- subset(ld2001, ld2001$Gear == 300)
ld2001g160 <- subset(ld2001, ld2001$Gear == 160)
ld2001g301 <- subset(ld2001, ld2001$Gear == 301)

ld2002g20 <- subset(ld2002, ld2002$Gear == 20)
ld2002g300 <- subset(ld2002, ld2002$Gear == 300)
ld2002g160 <- subset(ld2002, ld2002$Gear == 160)
ld2002g301 <- subset(ld2002, ld2002$Gear == 301)

ld2003g20 <- subset(ld2003, ld2003$Gear == 20)
ld2003g300 <- subset(ld2003, ld2003$Gear == 300)
ld2003g160 <- subset(ld2003, ld2003$Gear == 160)
ld2003g301 <- subset(ld2003, ld2003$Gear == 301)

ld2004g20 <- subset(ld2004, ld2004$Gear == 20)
ld2004g300 <- subset(ld2004, ld2004$Gear == 300)
ld2004g160 <- subset(ld2004, ld2004$Gear == 160)
ld2004g301 <- subset(ld2004, ld2004$Gear == 301)

ld2005g20 <- subset(ld2005, ld2005$Gear == 20)
ld2005g300 <- subset(ld2005, ld2005$Gear == 300)
ld2005g160 <- subset(ld2005, ld2005$Gear == 160)
ld2005g301 <- subset(ld2005, ld2005$Gear == 301)

ld2006g20 <- subset(ld2006, ld2006$Gear == 20)
ld2006g300 <- subset(ld2006, ld2006$Gear == 300)
ld2006g160 <- subset(ld2006, ld2006$Gear == 160)
ld2006g301 <- subset(ld2006, ld2006$Gear == 301)

ld2007g20 <- subset(ld2007, ld2007$Gear == 20)
ld2007g300 <- subset(ld2007, ld2007$Gear == 300)
ld2007g160 <- subset(ld2007, ld2007$Gear == 160)
ld2007g301 <- subset(ld2007, ld2007$Gear == 301)

ld2008g20 <- subset(ld2008, ld2008$Gear == 20)
ld2008g300 <- subset(ld2008, ld2008$Gear == 300)
ld2008g160 <- subset(ld2008, ld2008$Gear == 160)
ld2008g301 <- subset(ld2008, ld2008$Gear == 301)

ld2009g20 <- subset(ld2009, ld2009$Gear == 20)
ld2009g300 <- subset(ld2009, ld2009$Gear == 300)
ld2009g160 <- subset(ld2009, ld2009$Gear == 160)
ld2009g301 <- subset(ld2009, ld2009$Gear == 301)

ld2010g20 <- subset(ld2010, ld2010$Gear == 20)
ld2010g300 <- subset(ld2010, ld2010$Gear == 300)
ld2010g160 <- subset(ld2010, ld2010$Gear == 160)
ld2010g301 <- subset(ld2010, ld2010$Gear == 301)

ld2011g20 <- subset(ld2011, ld2011$Gear == 20)
ld2011g300 <- subset(ld2011, ld2011$Gear == 300)
ld2011g160 <- subset(ld2011, ld2011$Gear == 160)
ld2011g301 <- subset(ld2011, ld2011$Gear == 301)

ld2012g20 <- subset(ld2012, ld2012$Gear == 20)
ld2012g300 <- subset(ld2012, ld2012$Gear == 300)
ld2012g160 <- subset(ld2012, ld2012$Gear == 160)
ld2012g301 <- subset(ld2012, ld2012$Gear == 301)

ld2013g20 <- subset(ld2013, ld2013$Gear == 20)
ld2013g300 <- subset(ld2013, ld2013$Gear == 300)
ld2013g160 <- subset(ld2013, ld2013$Gear == 160)
ld2013g301 <- subset(ld2013, ld2013$Gear == 301)

ld2014g20 <- subset(ld2014, ld2014$Gear == 20)
ld2014g300 <- subset(ld2014, ld2014$Gear == 300)
ld2014g160 <- subset(ld2014, ld2014$Gear == 160)
ld2014g301 <- subset(ld2014, ld2014$Gear == 301)

ld2015g20 <- subset(ld2015, ld2015$Gear == 20)
ld2015g300 <- subset(ld2015, ld2015$Gear == 300)
ld2015g160 <- subset(ld2015, ld2015$Gear == 160)
ld2015g301 <- subset(ld2015, ld2015$Gear == 301)

ld2016g20 <- subset(ld2016, ld2016$Gear == 20)
ld2016g300 <- subset(ld2016, ld2016$Gear == 300)
ld2016g160 <- subset(ld2016, ld2016$Gear == 160)
ld2016g301 <- subset(ld2016, ld2016$Gear == 301)

ld2017g20 <- subset(ld2017, ld2017$Gear == 20)
ld2017g300 <- subset(ld2017, ld2017$Gear == 300)
ld2017g160 <- subset(ld2017, ld2017$Gear == 160)
ld2017g301 <- subset(ld2017, ld2017$Gear == 301)

ld2018g20 <- subset(ld2018, ld2018$Gear == 20)
ld2018g300 <- subset(ld2018, ld2018$Gear == 300)
ld2018g160 <- subset(ld2018, ld2018$Gear == 160)
ld2018g301 <- subset(ld2018, ld2018$Gear == 301)

ld2019g20 <- subset(ld2019, ld2019$Gear == 20)
ld2019g300 <- subset(ld2019, ld2019$Gear == 300)
ld2019g160 <- subset(ld2019, ld2019$Gear == 160)
ld2019g301 <- subset(ld2019, ld2019$Gear == 301)

ld2020g20 <- subset(ld2020, ld2020$Gear == 20)
ld2020g300 <- subset(ld2020, ld2020$Gear == 300)
ld2020g160 <- subset(ld2020, ld2020$Gear == 160)
ld2020g301 <- subset(ld2020, ld2020$Gear == 301)


#Prep data
#full_spp_list <- unique(ld_gear$Scientificname)
#y <- as.vector(full_spp_list)
#yy <- data.frame(y)
ldata <- ld1998g20 #re-run this for each year and gear iteration above
spdata <- unique(ldata$Scientificname)
spdata <- as.vector(spdata)
w <- data.frame(spdata)
w$Weights <- rep(0, length(spdata))

#Run loop to calculate weight for each species and put all weights together in data frame
for (h in 1:length(w$spdata)) {
  species <- subset(ldata, Scientificname==spdata[h]) #subset each species from the original data sheet
  lengths <- as.vector(species$sl)
  lengths <- as.numeric(lengths) #species lengths need to be converted to numeric vector for code to work
  min <- min(lengths, na.rm=T) #calculate min and max of length measurements
  max <- max(lengths, na.rm=T)
  
  #Use max and min create quantiles
  z <- (max - min)/4
  a <- min + z 
  b <- a + z 
  c <- b + z 
  
  #Put lengths into bins
  bin1 <- c()
  bin2 <- c()
  bin3 <- c()
  bin4 <- c()
  for (j in 1:length(lengths)) { #uses the length quantile parameters defined above to put lengths into different bins
    l <- lengths[j]
    if (!is.na(l) & l <= a) {
      bin1 <- c(bin1, l)
    }
    if (!is.na(l) & l > a & l <= b) {
      bin2 <- c(bin2, l)
    }
    if (!is.na(l) & l > b & l <= c) {
      bin3 <- c(bin3, l)
    }
    if (!is.na(l) & l > c) {
      bin4 <- c(bin4, l)
    }
  }
  
  #Summary table:
  table <- data.frame(matrix("", ncol = 3, nrow = 4))
  colnames(table) <- c("AvgLength", "Proportion", "NumOfTotal")
  rownames(table) <- c("B1", "B2","B3","B4")
  table$AvgLength <- c(mean(bin1), mean(bin2), mean(bin3), mean(bin4))
  measured <- length(bin1) + length(bin2) +length(bin3) + length(bin4)
  table$Proportion <- c((length(bin1)/measured), (length(bin2)/measured), (length(bin3)/measured), (length(bin4)/measured))
  table$NumOfTotal <- (table$Proportion)*(nrow(species))
  #table will display the following info for each bin: AvgLength, Proportion of subset that were in that bin, 
  #and number of total population that would expected to fit in that bin based on proportion of subset
  
  # updated the below code based on error: Error in if (species$Scientificname == "Anchoa mitchilli") { : 
  #the condition has length > 1
  # Kira recommended:instead of running " if (species$Scientificname == "Anchoa mitchilli") "  
  # change it to " if (all(species$Scientificname == "Anchoa mitchilli")) ". 
  #This change would need to be applied to each line with a new species name. 
  #Each time the code is iterating all the scientific names in the species dataset should 
  #be the same (so long as the code is working right) so the condition 
  #" all(species$Scientificname == "name") " should be true.
  #Species length/weight conversion codes are written as separate files
  #Use if/else statements to call up and run appropriate l/w code depending on species name
  if (all(species$Scientificname == "Anchoa mitchilli")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/ancmitIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE) #total weight is sum of weights calculated for each bin
    w[h, 2] <- weight #puts total weight measurement for that species into data frame w
  } else if (all(species$Scientificname == "Anchoa cubana")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/anccubIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Anchoa spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/ancsppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Anchoa lyolepis")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/anclyoIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Rhinoptera bonasus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/rhibonIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Lagodon rhomboides")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/lagrhoIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Lutjanus analis")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/lutanaIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Lutjanus synagris")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/lutsynIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Lutjanus cyanopterus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/lutcyaIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Dasyatis sabina")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/dassabIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Eucinostomus gula")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/eucgulIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Etropus crossotus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/etrcroIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Eucinostomus harengulus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/eucharIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Micropogonias undulatus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/micundIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Orthopristis chrysoptera")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/ortchrIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Leiostomus xanthurus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/leixanIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Brevoortia spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/bresppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Bairdiella chrysoura")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/baichrIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Ariopsis felis")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/arifelIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Menticirrhus americanus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/menameIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Gerres cinereus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/gercinIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Harengula jaguana")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/harjagIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Lutjanus griseus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/lutgriIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Malaclemys terrapin")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/malterIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Menippe spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/mensppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Limulus polyphemus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/limpolIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Mugil cephalus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/mugcepIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Mugil curema")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/mugcurIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Mugil rubrioculus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/mugrubIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Mugil trichodon")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/mugtriIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Archosargus probatocephalus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/arcproIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Bagre marinus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/bagmarIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Caranx hippos")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/carhipIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Centropomus undecimalis")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/cenundIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Chilomycterus schoepfii")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/chischIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Cynoscion nebulosus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/cynnebIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Dasyatis say")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/dassayIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Diapterus auratus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/diaaurIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Diapterus rhombeus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/diarhoIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Eugerres plumieri")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/eugpluIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Oligoplites saurus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/olisauIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Opisthonema oglinum")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/opioglIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Pogonias cromis")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/pogcroIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Sciaenops ocellatus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/scioceIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Sphoeroides nephelus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/sphnepIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Sphoeroides spengleri")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/sphspeIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Trachinotus carolinus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/tracarIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Trachinotus falcatus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/trafalIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Anchoa hepsetus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/anchepIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Callinectes sapidus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/calsapIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Chloroscombrus chrysurus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/chlchrIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Eucinostomus spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/eucsppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Farfantepenaeus aztecus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/faraztIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Farfantepenaeus duorarum")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/farduoIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Litopenaeus setiferus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/litsetIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Agonostomus monticola")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/agomonIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Caranx latus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/carlatIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Elops saurus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/elosauIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Chelonia mydas")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/chemydIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Citharichthys spilopterus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/citspiIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Clupeidae spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/clusppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Cynoscion complex")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/cyncomIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Dorosoma cepedianum")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/dorcepIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Eucinostomus argenteus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/eucargIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Eucinostomus jonesii")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/eucjonIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Eucinostomus melanopterus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/eucmelIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Farfantepenaeus spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/farsppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Gymnura micrura")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/gymmicIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Mugil spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/mugsppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Paralichthys lethostigma")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/parletIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Paralichthys albigutta")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/paralbIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Selene vomer")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/selvomIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Sphoeroides testudineus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/sphtesIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Opsanus tau")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/opstauIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Strongylura notata")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/strnotIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Strongylura marina")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/strmarIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Strongylura spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/strsppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Strongylura timucu")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/strtimIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Fundulus seminolis")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/funsemIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Fundulus confluentus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/funconIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Fundulus spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/funsppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Fundulus grandis")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/fungraIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Fundulus majalis")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/funmajIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Fundulus similis")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/funsimIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Lucania parva")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/lucparIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Floridichthys carpio")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/flocarIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Cyprinodon variegatus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/cypvarIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Poecilia latipinna")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/poelatIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Microgobius gulosus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/micgulIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Gobiosoma bosc")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/gobbosIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Gobiosoma robustum")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/gobrobIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Ctenogobius spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/ctesppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Gobionellus oceanicus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/goboceIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Ctenogobius smaragdus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/ctesmaIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Evorthodus lyricus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/evolyrIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Ctenogobius stigmaticus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/ctestiIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Microgobius spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/micsppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Callinectes spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/calsppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Callinectes ornatus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/calornIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Callinectes similis")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/calsimIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Callinectes arcuatus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/calarcIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Callinectes bocourti")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/calbocIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Callinectes danae")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/caldanIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Callinectes exasperatus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/calexaIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Callinectes marginatus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/calmarIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Menidia spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/menisppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Hippocampus erectus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/hipereIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Albula vulpes")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/albvulIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Achirus lineatus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/achlinIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Megalops atlanticus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/megatlIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Hyporhamphus meeki")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/hypmeeIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Membras martinica")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/memmarIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Hippocampus zosterae")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/hipzosIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Synodus foetens")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/synfoeIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Gobiesox strumosus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/gobstrIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Microgobius thalassinus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/micthaIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Synodus spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/synsppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Prionotus scitulus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/prisciIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Gobisoma spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/gobsppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Ctenogobius boleosoma")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/ctebolIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Trinectes maculatus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/trimacIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Sardinella aurita")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/saraurIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Pomatomus saltatrix")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/pomsalIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Calamus spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/calasppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Prionotus tribulus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/pritriIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Hyporhamphus spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/hypsppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Hyporhamphus unifasciatus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/hypuniIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Symphurus plagiusa")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/symplaIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Prionotus spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/prisppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Archosargus rhomboidalis")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/arcrhoIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Scomberomorus maculatus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/scomacIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Archosargus spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/arcsppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Fundulus chrysotus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/funchrIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Fundulus heteroclitus")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/funhetIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Chilomycterus spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/chisppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Elops smithi")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/elosmiIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Elops spp.")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/elosppIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } else if (all(species$Scientificname == "Calamus penna")) {
    source("C:/Users/miche/Desktop/Biomass Species Code/calpenIRL.R", echo=TRUE)
    weight <- sum(table$TotalWeight, na.rm=TRUE)
    w[h, 2] <- weight
  } 
  
  
  names(w)[1] <- "sp"
  allweights <- rbind(w, wtotal) # this merges w (for just each year-gear combo) back with the total species list, wtotal
  gweights <- allweights %>% 
    group_by(sp) %>%
    summarize(Weights_sum = sum(Weights)) # this part of the code does not appear to be working
  
}