library(plyr)

shrooms <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data", sep = ",")

colnames(shrooms) <- c("Edible", "CapShape", "CapSurface", "CapColor", "Bruises", "Odor", "GillAtt", "GillSpacing",
                       "GillSize", "GillColor", "StalkShape", "StalkRoot", "StalkSurfaceAboveRing",
                       "StalkSurface BelowRing", "StalkColor AboveRing", "StalkColorBelowRing", "VeilType",
                       "VeilColor", "RingNumber", "RingType", "SporePrintColor", "Population", "Habitat")
str(shrooms)
head(shrooms)

# change values in column
shrooms$Edible <-  as.character(shrooms$Edible)
shrooms$Edible[shrooms$Edible == "e"] <- "edible"
shrooms$Edible[shrooms$Edible == "p"] <- "poisonous"


#$Cap Shape               : Factor w/ 6 levels
shrooms$CapShape <-  as.character(shrooms$CapShape)
shrooms$CapShape[shrooms$CapShape == "b"] <- "bell"
shrooms$CapShape[shrooms$CapShape == "c"] <- "conical"
shrooms$CapShape[shrooms$CapShape == "f"] <- "flat"
shrooms$CapShape[shrooms$CapShape == "k"] <- "knobbed"
shrooms$CapShape[shrooms$CapShape == "s"] <- "sunken"
shrooms$CapShape[shrooms$CapShape == "x"] <- "convex"
levels(shrooms$`Cap Shape`)

#$ Cap Surface             : Factor w/ 4 levels 
levels(shrooms$`Cap Shape`)
shrooms$`Cap Shape` <-  as.character(shrooms$`Cap Shape`)
shrooms$`Cap Shape`[shrooms$`Cap Shape` == "b"] <- "bell"
shrooms$`Cap Shape`[shrooms$`Cap Shape` == "c"] <- "conical"
shrooms$`Cap Shape`[shrooms$`Cap Shape` == "f"] <- "flat"
shrooms$`Cap Shape`[shrooms$`Cap Shape` == "k"] <- "knobbed"

#$ Cap Color               : Factor w/ 10 levels 
shrooms$`Cap Shape`[shrooms$`Cap Shape` == "b"] <- "bell"
shrooms$`Cap Shape`[shrooms$`Cap Shape` == "c"] <- "conical"
shrooms$`Cap Shape`[shrooms$`Cap Shape` == "f"] <- "flat"
shrooms$`Cap Shape`[shrooms$`Cap Shape` == "k"] <- "knobbed"
shrooms$`Cap Shape`[shrooms$`Cap Shape` == "b"] <- "bell"
shrooms$`Cap Shape`[shrooms$`Cap Shape` == "c"] <- "conical"
shrooms$`Cap Shape`[shrooms$`Cap Shape` == "f"] <- "flat"
shrooms$`Cap Shape`[shrooms$`Cap Shape` == "k"] <- "knobbed"
shrooms$`Cap Shape`[shrooms$`Cap Shape` == "b"] <- "bell"
shrooms$`Cap Shape`[shrooms$`Cap Shape` == "c"] <- "conical"


#$ Bruises                 : Factor w/ 2 levels 
#$ Odor                    : Factor w/ 9 levels 
#$ Gill Att                : Factor w/ 2 levels 
#$ Gill Spacing            : Factor w/ 2 levels 
#$ Gill Size               : Factor w/ 2 levels 
#$ Gill Color              : Factor w/ 12 levels 
#$ Stalk Shape             : Factor w/ 2 levels 
#$ Stalk Root              : Factor w/ 5 levels 
#$ Stalk Surface Above Ring: Factor w/ 4 levels 
#$ Stalk Surface Below Ring: Factor w/ 4 levels 
#$ Stalk Color Above Ring  : Factor w/ 9 levels 
#$ Stalk Color Below Ring  : Factor w/ 9 levels 
#$ Veil Type               : Factor w/ 1 level 
#$ Veil Color              : Factor w/ 4 levels 
#$ Ring Number             : Factor w/ 3 levels 
#$ Ring Type               : Factor w/ 5 levels 
#$ Spore Print Color       : Factor w/ 9 levels 
#$ Population              : Factor w/ 6 levels 
#$ Habitat                 : Factor w/ 7 levels 