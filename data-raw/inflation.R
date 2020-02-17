## code to prepare `population_projections` dataset goes here

inflation_data <- readxl::read_xlsx("data-raw/inflation_data_2020.xlsx", sheet="inflation_multipliers") %>%
  dplyr::as_tibble() %>%
  janitor::clean_names()

usethis::use_data(inflation_data, overwrite = TRUE)

