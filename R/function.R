#' INSURANCE dataset
#'@param insurance A dataframe consisting the information about the insurance.We only select those person whose charges are  more than 0.
#'@param col1_of_interest The user can select a column of their choice to check different things about the insured person
#'@param col2_of_interest The users wish is granted and a second column can be chosen to be investigated.
#'@importFrom janitor clean_names
#'@importFrom dplyr select filter
#'@importFrom readr read_csv
#'@export
#'@return A simplified dataframe
#'@details
#'This function returns a very simplified version of the original dataset, such that the person who is interested in studying the insurance dataset is not
#'overwhelmed
#'@examples
#'clean_insurance_data(insurance, age, charges)

clean_insurance_data <- function(insurance, col1_of_interest, col2_of_interest){

  insurance |>
    janitor::clean_names() |>
    dplyr::filter(charges > 0) |>
    dplyr::select(age, sex, bmi, children, smoker, region, charges, {{col1_of_interest}}, {{col2_of_interest}})

}
