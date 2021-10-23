library(readr)
setwd("/Users/andrewshen/OSU Coding/DATA I:O/data-io-2021-velocity")
dim_item_master <- read_csv("data/dim_item_master.csv")
dim_dates <- read_csv("data/dim_dates.csv")
dim_items <- read_csv("data/dim_items.csv")
fact_receipts <- read_csv("data/fact_receipts.csv")
fact_invoice_items <- read_csv("data/fact_invoice_items.csv")

joined_speedbump_df <- inner_join(filtered_speedbump, filtered_speedbump_subjects, by = c('Subject' = 'ParticipantID'))