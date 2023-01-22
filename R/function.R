clean_insurance_data <- function(insurance, col1_of_interest, col2_of_interest){

  insurance |>
    janitor::clean_names() |>
    dplyr::filter(charges > 0) |>
    dplyr::select(age, sex, bmi, children, smoke, region, charges, {{col1_of_interest}}, {{col2_of_interest}})

}
