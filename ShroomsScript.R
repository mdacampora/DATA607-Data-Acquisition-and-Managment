library(dplyr)
shrooms <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data", sep = ",")

colnames(shrooms) <- c("Edible", "CapShape", "CapSurface", "CapColor", "Bruises", "Odor", "GillAtt", "GillSpacing",
                       "GillSize", "GillColor", "StalkShape", "StalkRoot", "StalkSurfaceAboveRing",
                       "StalkSurfaceBelowRing", "StalkColorAboveRing", "StalkColorBelowRing", "VeilType",
                       "VeilColor", "RingNumber", "RingType", "SporePrintColor", "Population", "Habitat")
str(shrooms)
head(shrooms)

# change values in column
#shrooms$Edible <-  as.character(shrooms$Edible)
#shrooms$Edible[shrooms$Edible == "e"] <- "edible"
#shrooms$Edible[shrooms$Edible == "p"] <- "poisonous"

#reassigned items to legible informationdplyr
shrooms$Edible <- shrooms$Edible %>% recode("e"="edible", "p"="poinsonous")
shrooms$CapShape <- shrooms$CapShape %>% recode("b"="bell", "c"="conical", "f"="flat",
                                                "k"="knobbed", "s"="sunken","x"="convex")
shrooms$CapSurface <- shrooms$CapSurface %>% recode()
shrooms$CapColor <- shrooms$CapColor %>% recode()
shrooms$Bruises <- shrooms$Bruises %>% recode()
shrooms$Odor <- shrooms$Odor %>% recode()
shrooms$GillAtt <- shrooms$GillAtt %>% recode()
shrooms$GillSpacing <- shrooms$GillSpacing %>% recode()
shrooms$GillSize <- shrooms$GillSize %>% recode()
shrooms$GillColor <- shrooms$GillColor %>% recode()
shrooms$StalkShape <- shrooms$StalkShape %>% recode()
shrooms$StalkRoot <- shrooms$StalkRoot %>% recode()
shrooms$StalkSurfaceBelowRing <- shrooms$StalkSurfaceBelowRing %>% recode()
shrooms$StalkSurfaceAboveRing <- shrooms$StalkSurfaceAboveRing %>% recode()
shrooms$StalkColorBelowRing <- shrooms$StalkColorBelowRing %>% recode()
shrooms$StalkColorAboveRing <- shrooms$StalkColorAboveRing %>% recode()
shrooms$VeilType <- shrooms$VeilType %>% recode()
shrooms$VeilColor <- shrooms$VeilColor %>% recode()
shrooms$RingNumber <- shrooms$RingNumber %>% recode()
shrooms$RingType <- shrooms$RingType %>% recode()
shrooms$SporePrintColor <- shrooms$SporePrintColor %>% recode()
shrooms$Population <- shrooms$Population %>% recode()
shrooms$Habitat <- shrooms$Habitat %>% recode()

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