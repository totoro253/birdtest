library(tidyverse)
library(dplyr)
library(psych)
library(skimr)
bird_collisions <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-04-30/bird_collisions.csv")
mp_light <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-04-30/mp_light.csv")

 
view(bird_collisions)
view(mp_light)
glimpse(bird_collisions)
glimpse(mp_light)
head(bird_collisions)
tail(bird_collisions)
skim(bird_collisions)
skim(mp_light)

any(is.na(bird_collisions[]))
any(is.na(mp_light[]))

stratum_b <- bird_collisions$stratum
genus_b <- bird_collisions$genus
species_b <- bird_collisions$species
date_b <- bird_collisions$date
locality_b <- bird_collisions$locality
family_b <- bird_collisions$family
flightcall_b <- bird_collisions$flight_call

glimpse(bird_collisions)

as.data.frame(table(genus_b))
as.data.frame(table(species_b))
plot(date_b)
as.data.frame(table(date_b))  #seperate date_b &frequency
as.data.frame(table(locality_b))
as.data.frame(table(family_b)) #seperate family_b &frequency

#combining family-genus-species
table(family_b,genus_b,species_b)
set.seed(1)
T3.Fam <- c("Cardinalidae ","Certhiidae","Icteridae ","Laniidae",
                                " Mimidae","Parulidae","Passerellidae","Polioptilidae",
                                " Regulidae","Sittidae","Troglodytidae"," Turdidae","Tyrannidae"
            ,"Vireonidae")
                     

hist(T3.Fam)


filter(bird_collisions, flight_call == 'Yes')

as.data.frame(table(flightcall_b))
as.data.frame(table(habitat_b))
as.data.frame(table(stratum_b))
