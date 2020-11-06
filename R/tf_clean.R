#' Clean TF data
#'
#' Takes in some specifically formatted data and squares it
#' @title tf_clean
#' @param data A dataframe to be cleaned
#' @return The cleaned data
#' @importFrom dplyr rename filter group_by summarise rename
#' @export

tf_clean <- function(data){

  renamed <- dplyr::rename(data, TT = TT_15plus)
  filtered <- dplyr::filter(renamed, survey_year <= 2020)
  grouped <- dplyr::group_by(filtered, survey_year)
  summarised <- dplyr::summarise(grouped, TF = round(mean(TF),2), TI = round(mean(TI),2), TT = round(mean(TT),2))
  final <- dplyr::rename(summarised, Survey_Year = survey_year)


  # filter(survey_year <= 2020) %>%
  # group_by(survey_year) %>%
  # summarise(TF = round(mean(TF),2), TI = round(mean(TI),2), TT = round(mean(TT),2)) %>%
  # rename(Survey_Year = survey_year)

  return(final)
  }

