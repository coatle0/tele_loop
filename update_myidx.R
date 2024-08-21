setwd('~')
tickerData <- new.env()


args=commandArgs(trailingOnly=TRUE)

#shell('rscript tele_single.R update_index',wait = TRUE)
qtr_ref_date <- args[1]
week_ref_date <- args[2]
idx_fn <- 'us_idx'
update_myuidx(qtr_ref_date,week_ref_date,idx_fn)

kidx_start = 5
ktickerData <- new.env()
data_start = "2022-12-05"
qtr_start = qtr_ref_date
week_start = week_ref_date
code<-code_get()

update_myidx(kidx_start,data_start,qtr_start,week_start)

