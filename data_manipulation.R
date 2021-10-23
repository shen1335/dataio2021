library(readr)
library(tidyverse)
library(dplyr)
setwd("/Users/andrewshen/OSU Coding/DATA I:O/data-io-2021-velocity")
dim_item_master <- read_csv("data/dim_item_master.csv")
dim_dates <- read_csv("data/dim_dates.csv")
dim_items <- read_csv("data/dim_items.csv")
fact_receipts <- read_csv("data/fact_receipts.csv")
fact_invoice_items <- read_csv("data/fact_invoice_items.csv")

joined_items_data <- inner_join(dim_item_master, dim_items, by = c('mstr_item_id' = 'mstr_item_id'))
cleaned_joined_items<-select(joined_items_data, -c(number.x, category_id, name_category, category_code, category_name, name.y, group_fresh, nickname, category_is_fresh, category_is_food, group_generic, commodity_id, fa_31_cat_id, name_combi, group_food, dummy_is_fresh, ranking, packaging, match_status, material_donation_status, name.x, dummy_is_fresh, name_fa_31_cat))

write.csv(cleaned_joined_items,"joined_items.csv", row.names = FALSE)
