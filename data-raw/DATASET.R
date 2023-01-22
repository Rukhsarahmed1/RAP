## code to prepare `DATASET` dataset goes here
insurance <- readr::read_csv("https://raw.githubusercontent.com/Rukhsarahmed1/RAP/main/insurance.csv")

usethis::use_data(insurance, overwrite = TRUE)
