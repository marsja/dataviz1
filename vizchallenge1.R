require(ggplot2)
require(readr)
require(dplyr)
full_trains <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-26/full_trains.csv")

full_trains %>%
  ggplot(aes(journey_time_avg)) +
  geom_histogram(bins = 20, alpha = .8) +
  ggtitle('Histogram of Average Journey time for trains on the SNCF Network') +
  xlab('Journey Time (mins.)') +
  ylab('Number of instances')
