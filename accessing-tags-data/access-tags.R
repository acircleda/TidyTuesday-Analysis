# accessing-tags-data

library(tidyverse)
library(tidytags) # install via devtools::install_github("bretsw/tidytags")
library(rtweet)

t <- read_tags("https://docs.google.com/spreadsheets/d/1yucj-9lR-yaac2A2tuUCPcURZ90-adEKl87mlhdzSMk/edit?usp=sharing")

d <- tidytags::pull_tweet_data(t$id_str)

write_csv(rtweet::flatten(d), "2020-05-08-tags-data.csv")
