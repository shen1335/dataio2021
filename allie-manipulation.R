library(readr)
library(dplyr)

# do not need this line if youre not andrew --> go to Session > Set Working Directory 

dim_item_master <- read_csv("data-io-2021-velocity/data/dim_item_master.csv")
dim_dates <- read_csv("data-io-2021-velocity/data/dim_dates.csv")
dim_items <- read_csv("data-io-2021-velocity/data/dim_items.csv")
fact_receipts <- read_csv("data-io-2021-velocity/data/fact_receipts.csv")
fact_invoice_items <- read_csv("data-io-2021-velocity/data/fact_invoice_items.csv")

