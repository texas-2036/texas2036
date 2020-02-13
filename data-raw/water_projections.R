## code to prepare `water_projections` dataset goes here

library(tidyverse)
library(janitor)

water_supply <- read_csv("data-raw/statewide_supplies.csv") %>%
  clean_names() %>%
  select(wug_county, wug_type, 9:14) %>%
  gather(year,value, 3:8) %>%
  mutate(year=gsub(pattern="^ws", replacement = "", x=year)) %>%
  group_by(year, wug_county) %>%
  summarise(supply=sum(value))

water_demand <- read_csv("data-raw/statewide_demands.csv") %>%
  clean_names() %>%
  select(wug_county, wug_type, 7:12) %>%
  gather(year,value, 3:8) %>%
  mutate(year=gsub(pattern="^d|1$", replacement = "", x=year)) %>%
  group_by(year, wug_county) %>%
  summarise(demand=sum(value))

water_needs <- read_csv("data-raw/statewide_needs.csv") %>%
  clean_names() %>%
  select(wug_county, wug_type, 7:12) %>%
  gather(year,value, 3:8) %>%
  mutate(year=gsub(pattern="^n", replacement = "", x=year)) %>%
  group_by(year, wug_county) %>%
  summarise(needs=sum(value))

water_projections <- water_supply %>%
  left_join(water_demand, by=c("year","wug_county")) %>%
  left_join(water_needs, by=c("year","wug_county")) %>%
  mutate(supply_gal=supply*325851,
         demand_gal=supply*325851,
         needs_gal=supply*325851)

usethis::use_data(water_projections, overwrite = TRUE)
