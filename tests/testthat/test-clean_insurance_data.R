#insurance <- readr::read_csv("https://raw.githubusercontent.com/Rukhsarahmed1/RAP/main/insurance.csv")


test_that("use",{



  returned_tibble <- clean_insurance_data(insurance,
                                      age,
                                      charges)


  returned_value <- dim(returned_tibble)[2]

  expected_value <- 7

  expect_equal(returned_value,expected_value)
})
