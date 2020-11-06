#' Makes figure
#'
#' Takes in some cleaned data and makes a figure
#' @title tf_fig
#' @param data A cleaned dataframe to
#' @import tidyverse ggplot2
#' @export

tf_fig <- function(data){

data %>%
  pivot_longer(!Survey_Year, names_to = "Stage", values_to = "Prevalence") %>%
  ggplot(aes(Survey_Year, Prevalence, color = Stage)) +
  geom_point() +
  geom_line() +
  ggtitle("TF, TI, and TT Prevalence") +
  ylab("Prevalence") +
  theme(legend.position = "right")

}
