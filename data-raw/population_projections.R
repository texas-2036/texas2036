## code to prepare `population_projections` dataset goes here

population_projections <- readr::read_csv("data-raw/population_projections.csv") %>%
  dplyr::as_tibble() %>%
  janitor::clean_names()

usethis::use_data(population_projections, overwrite = TRUE)
