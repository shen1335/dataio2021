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

joined_receipts_invoice <- inner_join(fact_receipts, fact_invoice_items, by = c('order_number' = 'order_number'))

