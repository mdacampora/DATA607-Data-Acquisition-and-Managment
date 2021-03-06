library(dplyr)

fileUrl <- "https://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data"

# To download the datset: 
#download.file(fileUrl, destfile = "Mushrooms.csv")
#list.files("Mushrooms.csv")

shrooms <- 
  read.csv(fileUrl, sep = ",", header=FALSE) %>%
  rename(
    Edible = V1,
    CapShape = V2, 
    CapSurface = V3, 
    CapColor = V4, 
    Bruises = V5, 
    Odor = V6, 
    GillAtt = V7, 
    GillSpacing = V8,
    GillSize = V9, 
    GillColor = V10, 
    StalkShape = V11, 
    StalkRoot = V12, 
    StalkSurfaceAboveRing = V13,
    StalkSurfaceBelowRing = V14, 
    StalkColorAboveRing = V15, 
    StalkColorBelowRing = V16, 
    VeilType = V17,
    VeilColor = V18, 
    RingNumber = V19, 
    RingType = V20, 
    SporePrintColor = V21, 
    Population = V22, 
    Habitat = V23) %>%
  mutate(
    Edible     = recode(Edible, 
                        e = "edible", 
                        p = "poinsonous"),
    CapShape   = recode(CapShape, 
                        b="bell", 
                        c="conical",
                        x="convex", 
                        f="flat",
                        k="knobbed",
                        s="sunken"),
    CapSurface = recode(CapSurface, 
                        f='fibrous', 
                        g='grooves', 
                        y='scaly', 
                        s='smooth'),
    Odor       = recode(Odor, 
                        a='almond', 
                        l='anise', 
                        c='creosote', 
                        y='fishy',
                        f='foul',
                        m='musty',
                        n='none',
                        p='pungent',
                        s='spicy'),
    Population = recode(Population, 
                        a='abundant',
                        c='clustered',
                        n='numerous',
                        s='scattered',
                        v='several',
                        y='solitary')) %>% 
  select(Edible, CapShape, CapSurface, Odor, Population)

head(shrooms)