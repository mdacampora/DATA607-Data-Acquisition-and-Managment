library(dplyr)
shrooms <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data", sep = ",")

colnames(shrooms) <- c("Edible", "CapShape", "CapSurface", "CapColor", "Bruises", "Odor", "GillAtt", "GillSpacing",
                       "GillSize", "GillColor", "StalkShape", "StalkRoot", "StalkSurfaceAboveRing",
                       "StalkSurfaceBelowRing", "StalkColorAboveRing", "StalkColorBelowRing", "VeilType",
                       "VeilColor", "RingNumber", "RingType", "SporePrintColor", "Population", "Habitat")


#Change values in column,reassigned items to legible information with dplyr
shrooms$Edible <- shrooms$Edible %>% 
  recode("e"="edible", "p"="poinsonous")

shrooms$CapShape <- shrooms$CapShape %>% 
  recode("b"="bell", 
         "c"="conical", 
         "f"="flat",
         "k"="knobbed", 
         "s"="sunken",
         "x"="convex")

shrooms$CapSurface <- shrooms$CapSurface %>% 
  recode('f'='fibrous',
         'g'='grooves',
         'y'='scaly',
         's'='smooth')

shrooms$Odor <- shrooms$Odor %>% 
  recode('a'='almond',
         'l'='anise',
         'c'='creosote',
         'y'='fishy',
         'f'='foul',
         'm'='musty',
         'n'='none',
         'p'='pungent',
         's'='spicy')

shrooms$Population <- shrooms$Population %>% 
  recode('a'='abundant',
         'c'='clustered',
         'n'='numerous',
         's'='scattered',
         'v'='several',
         'y'='solitary')

test_set <- shrooms %>% select(Edible, CapShape, CapSurface, Odor, Population)
head(test_set)