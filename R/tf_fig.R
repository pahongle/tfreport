#' Makes figure
#'
#' Takes in some cleaned data and makes a figure
#' @title tf_fig
#' @param data A cleaned dataframe to
#' @import ggplot2 digest
#' @importFrom tidyr pivot_longer
#' @export

tf_fig <- function(data){

  pivoted <- tidyr::pivot_longer(data, !Survey_Year, names_to = "Stage", values_to = "Prevalence")

  ggplot(pivoted, aes(Survey_Year, Prevalence, color = Stage)) +
  geom_point() +
  geom_line() +
  ggtitle("TF, TI, and TT Prevalence") +
  ylab("Prevalence") +
  theme(legend.position = "right")

}
