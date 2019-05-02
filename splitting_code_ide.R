#splitting files
library(tidyr)
library(readxl)
library(readr)
library(dplyr)
library(data.table)

#quebrada_south_facing
setwd("C:/Users/A02296270/Desktop/test_split")
sheets <- excel_sheets("Ide-data-sheets_v1 (2).xlsx")
filenames <- paste0(sheets, "_first_split.csv")
?read_excel
?paste0
# read_excel only reads a single sheet, so lapply over each sheet name
dats <- lapply(sheets, read_excel, path = "Ide-data-sheets_v1 (2).xlsx")
summary(dats)
dats[1]
# Save each data frame with different filename using write_csv
lapply(seq_along(dats), function(i) write_csv(dats[[i]], filenames[i]))

quebrada_south_facing_filenames <- dir("C:/Users/A02296270/Desktop/test_split",full.names=T)
quebrada_south_facing_filenames_split<-quebrada_south_facing_filenames[quebrada_south_facing_filenames %like% "first_split"]

#biomass year 1
biomass_year_1 <-read.csv(quebrada_south_facing_filenames_split[1])
mylist_biomass_year1 <- split(biomass_year_1, biomass_year_1$site)
names(mylist_biomass_year1)

filenames <- names(mylist_biomass_year1)
for (i in 1:length(mylist_biomass_year1)){
  outname <- paste("C:/Users/A02296270/Desktop/test_split_2/", filenames[i], "_biomass_drought_year_1.csv", sep= "")
  write.csv(mylist_biomass_year1[[i]], outname, row.names= F, quote= F)
}

#biomass year 2
biomass_year_2 <-read.csv(quebrada_south_facing_filenames_split[2])
mylist_biomass_year2 <- split(biomass_year_2, biomass_year_2$site)
names(mylist_biomass_year2)

filenames_drought_year2 <- names(mylist_biomass_year2)
for (i in 1:length(mylist_biomass_year2)){
  outname <- paste("C:/Users/A02296270/Desktop/test_split_2/", filenames_drought_year2 [i], "_biomass_drought_year_2.csv", sep= "")
  write.csv(mylist_biomass_year2[[i]], outname, row.names= F, quote= F)
}

#biomass year 3
biomass_year_3 <-read.csv(quebrada_south_facing_filenames_split[3])
mylist_biomass_year3 <- split(biomass_year_3, biomass_year_3$site)
names(mylist_biomass_year3)

filenames_drought_year3 <- names(mylist_biomass_year3)
for (i in 1:length(mylist_biomass_year3)){
  outname <- paste("C:/Users/A02296270/Desktop/test_split_2/", filenames_drought_year2 [i], "_biomass_drought_year_3.csv", sep= "")
  write.csv(mylist_biomass_year3[[i]], outname, row.names= F, quote= F)
}


#biomass baseline
biomass_year_baseline <-read.csv(quebrada_south_facing_filenames_split[4])
mylist_biomass_yearbaseline <- split(biomass_year_baseline, biomass_year_baseline$site)
names(mylist_biomass_yearbaseline)

filenames_drought_yearbaseline <- names(mylist_biomass_yearbaseline)
for (i in 1:length(mylist_biomass_yearbaseline)){
  outname <- paste("C:/Users/A02296270/Desktop/test_split_2/", filenames_drought_year2[i], "_biomass_baseline.csv", sep= "")
  write.csv(mylist_biomass_yearbaseline[[i]], outname, row.names= F, quote= F)
}

#climate
climate <-read.csv(quebrada_south_facing_filenames_split[5])
mylist_climate <- split(climate, climate$site)
names(mylist_climate)

filenames_climate <- names(mylist_climate)
for (i in 1:length(mylist_climate)){
  outname <- paste("C:/Users/A02296270/Desktop/test_split_2/", filenames_climate [i], "_climate.csv", sep= "")
  write.csv(mylist_climate[[i]], outname, row.names= F, quote= F)
}


#plant cover year 1
cover_year_1 <-read.csv(quebrada_south_facing_filenames_split[6])
mylist_cover_year_1 <- split(cover_year_1, cover_year_1$site)
names(mylist_cover_year_1)

filenames_cover_year_1 <- names(mylist_cover_year_1)
for (i in 1:length(mylist_cover_year_1)){
  outname <- paste("C:/Users/A02296270/Desktop/test_split_2/", filenames_cover_year_1 [i], "_cover_drought_year_1.csv", sep= "")
  write.csv(mylist_cover_year_1[[i]], outname, row.names= F, quote= F)
}

#plant cover year 2
cover_year_2 <-read.csv(quebrada_south_facing_filenames_split[7])
mylist_cover_year_2 <- split(cover_year_2, cover_year_2$site)
names(mylist_cover_year_2)

filenames_cover_year_2 <- names(mylist_cover_year_2)
for (i in 1:length(mylist_cover_year_2)){
  outname <- paste("C:/Users/A02296270/Desktop/test_split_2/", filenames_cover_year_2 [i], "_cover_drought_year_2.csv", sep= "")
  write.csv(mylist_cover_year_2[[i]], outname, row.names= F, quote= F)
}

#plant cover year 3
cover_year_3 <-read.csv(quebrada_south_facing_filenames_split[8])
summary(cover_year_3)
mylist_cover_year_3 <- split(cover_year_3, cover_year_3$site)
names(mylist_cover_year_3)

filenames_cover_year_3 <- names(mylist_cover_year_3)
for (i in 1:length(mylist_cover_year_3)){
  outname <- paste("C:/Users/A02296270/Desktop/test_split_2/", filenames_cover_year_3 [i], "_cover_drought_year_3.csv", sep= "")
  write.csv(mylist_cover_year_3[[i]], outname, row.names= F, quote= F)
}

#plant cover baseline
cover_baseline <-read.csv(quebrada_south_facing_filenames_split[9])
summary(cover_baseline)
mylist_cover_baseline <- split(cover_baseline, cover_baseline$site)
names(mylist_cover_baseline)

filenames_cover_baseline <- names(mylist_cover_baseline)
for (i in 1:length(mylist_cover_baseline)){
  outname <- paste("C:/Users/A02296270/Desktop/test_split_2/", filenames_cover_baseline [i], "_cover_baseline.csv", sep= "")
  write.csv(mylist_cover_baseline[[i]], outname, row.names= F, quote= F)
}

#disturbance
disturbance <-read.csv(quebrada_south_facing_filenames_split[10])
summary(disturbance)
mylist_disturbance <- split(disturbance, disturbance$site)
names(mylist_disturbance)

filenames_disturbance <- names(mylist_disturbance)
for (i in 1:length(mylist_disturbance)){
  outname <- paste("C:/Users/A02296270/Desktop/test_split_2/", filenames_disturbance [i], "_disturbance.csv", sep= "")
  write.csv(mylist_disturbance[[i]], outname, row.names= F, quote= F)
}

#field descriptions
field_descriptions <-read.csv(quebrada_south_facing_filenames_split[11])
write.csv(field_descriptions,file='la_campana_quebrads_field_descriptions.csv')
summary(field_descriptions)

#plan
plan <-read.csv(quebrada_south_facing_filenames_split[12])
summary(plan)
mylist_plan <- split(plan, plan$site)
names(mylist_plan)

filenames_plan <- names(mylist_plan)
for (i in 1:length(mylist_plan)){
  outname <- paste("C:/Users/A02296270/Desktop/test_split_2/", filenames_plan [i], "_plan.csv", sep= "")
  write.csv(mylist_plan[[i]], outname, row.names= F, quote= F)
}

#plan
scratch <-read.csv(quebrada_south_facing_filenames_split[13])
#nothing

#treatments
treatments <-read.csv(quebrada_south_facing_filenames_split[14])
summary(treatments)
mylist_treatments <- split(treatments, treatments$site)
names(mylist_treatments)

filenames_treatments <- names(mylist_treatments)
for (i in 1:length(mylist_treatments)){
  outname <- paste("C:/Users/A02296270/Desktop/test_split_2/", filenames_treatments [i], "_treatments.csv", sep= "")
  write.csv(mylist_treatments[[i]], outname, row.names= F, quote= F)
}

#sites
taxa <-read.csv(quebrada_south_facing_filenames_split[15])
summary(taxa)

write.csv(taxa,file='la_campana_quebrads_taxa.csv')

#treatments
treatments <-read.csv(quebrada_south_facing_filenames_split[16])
summary(treatments)
mylist_treatments <- split(treatments, treatments$site)
names(mylist_treatments)

filenames_treatments <- names(mylist_treatments)
for (i in 1:length(mylist_treatments)){
  outname <- paste("C:/Users/A02296270/Desktop/test_split_2/", filenames_treatments [i], "_treatments.csv", sep= "")
  write.csv(mylist_treatments[[i]], outname, row.names= F, quote= F)
}

write.csv(taxa,file='la_campana_quebrads_taxa.csv')
########Nielso Chieppa########

setwd("C:/Users/A02296270/Desktop/split_Nielson")
sheets <- excel_sheets("Nielsen_Chieppa_IDE_Sites.xlsx")
filenames <- paste0(sheets, "_first_split_Nielson.csv")

# read_excel only reads a single sheet, so lapply over each sheet name
dats <- lapply(sheets, read_excel, path = "Nielsen_Chieppa_IDE_Sites.xlsx")
summary(dats)
dats[1]
# Save each data frame with different filename using write_csv
lapply(seq_along(dats), function(i) write_csv(dats[[i]], filenames[i]))

nielson_filenames <- dir("C:/Users/A02296270/Desktop/Side_projects/droughtnet/file_splitting/split_nielson",full.names=T)
nielson_filenames_split<-nielson_filenames[nielson_filenames %like% "first_split"]


#allometric estimates
allometric_estimates_2016_2017<-read.csv(nielson_filenames_split[1])
write.csv(allometric_estimates_2016_2017,file = 'Nielson_et_al_allometric_estimates_2016_2017.csv')
mylist_allometric_estimates_2016_2017 <- split(allometric_estimates_2016_2017, allometric_estimates_2016_2017$site)
names(mylist_allometric_estimates_2016_2017)

filenames <- names(mylist_biomass_year1)
for (i in 1:length(mylist_biomass_year1)){
  outname <- paste("C:/Users/A02296270/Desktop/test_split_2/", filenames[i], "_biomass_drought_year_1.csv", sep= "")
  write.csv(mylist_biomass_year1[[i]], outname, row.names= F, quote= F)
}

#biomass
biomass_2016_2017<-read.csv(nielson_filenames_split[2])
#wide to long
biomass_long <- gather(biomass_2016_2017, species, biomass, Abutilon.halophilum:Poaceae.unknown5, factor_key=TRUE)
biomass_long_2<-biomass_long[-6]
biomass_long_2$note <- 'Standing Biomass g/m2'
mylist_biomass_2016_2017 <- split(biomass_long_2, biomass_long_2$Site)
names(mylist_biomass_2016_2017)

filenames <- names(mylist_biomass_2016_2017)
for (i in 1:length(mylist_biomass_2016_2017)){
  outname <- paste("C:/Users/A02296270/Desktop/nielson_split_biomass_long/", filenames[i], "_biomass_long_2016_2017.csv", sep= "")
  write.csv(mylist_biomass_2016_2017[[i]], outname, row.names= F, quote= F)
}

#climate - had to do this by hand, very odd format

#cover
cover_2016_2017<-read.csv(nielson_filenames_split[4])
cover_long <- gather(cover_2016_2017, species, cover, Abutilon.halophilum:Poaceae.unknown5, factor_key=TRUE)
mylist_cover_2016_2017 <- split(cover_long, cover_long$Site)
names(mylist_cover_2016_2017)

filenames <- names(mylist_cover_2016_2017)
for (i in 1:length(mylist_cover_2016_2017)){
  outname <- paste("C:/Users/A02296270/Desktop/nielson_split_biomass_long/", filenames[i], "_cover_long_2016_2017.csv", sep= "")
  write.csv(mylist_cover_2016_2017[[i]], outname, row.names= F, quote= F)
}

#disturbance
disturbance_2016_2017<-read.csv(nielson_filenames_split[5])
mylist_disturbance_2016_2017 <- split(disturbance_2016_2017, disturbance_2016_2017$site)
names(mylist_disturbance_2016_2017)

filenames <- names(mylist_disturbance_2016_2017)
for (i in 1:length(mylist_disturbance_2016_2017)){
  outname <- paste("C:/Users/A02296270/Desktop/split_nielson_2/", filenames[i], "_disturbance_2016_2017.csv", sep= "")
  write.csv(mylist_disturbance_2016_2017[[i]], outname, row.names= F, quote= F)
}

#soils
edaphic<-read.csv(nielson_filenames_split[6])
mylist_edaphic <- split(edaphic, edaphic$Site)
names(mylist_edaphic)

filenames <- names(mylist_edaphic)
for (i in 1:length(mylist_edaphic)){
  outname <- paste("C:/Users/A02296270/Desktop/split_nielson_2/", filenames[i], "_soils.csv", sep= "")
  write.csv(mylist_edaphic[[i]], outname, row.names= F, quote= F)
}

#field descriptions
Nielson_et_al_field_descriptions<-read.csv(nielson_filenames_split[7])
write.csv(Nielson_et_al_field_descriptions,file = 'Nielson_et_al_field_descriptions.csv')

#plan
plan<-read.csv(nielson_filenames_split[8])
mylist_plan <- split(plan, plan$site)
names(mylist_plan)

filenames <- names(mylist_plan)
for (i in 1:length(mylist_plan)){
  outname <- paste("C:/Users/A02296270/Desktop/split_nielson_2/", filenames[i], "_plan.csv", sep= "")
  write.csv(mylist_plan[[i]], outname, row.names= F, quote= F)
}

#scratch
#nothing in there

#sites
sites<-read.csv(nielson_filenames_split[10])
mylist_sites <- split(sites, sites$site)
names(mylist_sites)

filenames <- names(mylist_sites)
for (i in 1:length(mylist_sites)){
  outname <- paste("C:/Users/A02296270/Desktop/split_nielson_2/", filenames[i], "_sites.csv", sep= "")
  write.csv(mylist_sites[[i]], outname, row.names= F, quote= F)
}

#taxa
Nielson_et_al_taxa<-read.csv(nielson_filenames_split[11])
write.csv(Nielson_et_al_taxa,file = 'Nielson_et_al_taxa.csv')

#treatments
treatments<-read.csv(nielson_filenames_split[12])
mylist_treatments <- split(treatments, treatments$site)
names(mylist_treatments)

filenames <- names(mylist_treatments)
for (i in 1:length(mylist_treatments)){
  outname <- paste("C:/Users/A02296270/Desktop/split_nielson_2/", filenames[i], "_treatments.csv", sep= "")
  write.csv(mylist_treatments[[i]], outname, row.names= F, quote= F)
}