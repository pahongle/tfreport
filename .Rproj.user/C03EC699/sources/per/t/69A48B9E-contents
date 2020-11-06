#' Clean TF data
#'
#' Takes in some specifically formatted data and squares it
#' @title tf_clean
#' @param data A dataframe to be cleaned
#' @return The cleaned data
#' @import tidyverse
#' @importFrom (magrittr,"%>%")
#' @export

tf_clean <- function(data){

  EU_summary <- data %>%
  rename(TT = TT_15plus) %>%
  filter(survey_year <= 2020) %>%
  group_by(survey_year) %>%
  summarise(TF = round(mean(TF),2), TI = round(mean(TI),2), TT = round(mean(TT),2)) %>%
  rename(Survey_Year = survey_year)

  return(EU_summary)
  }
