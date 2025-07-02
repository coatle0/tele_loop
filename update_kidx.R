library(telegram.bot)
bot=Bot(token=Sys.getenv("telegram_bot_token"))
kw_bot=Bot(token=Sys.getenv("telegram_kw_token"))
chat_id <- 1278251780

setwd('~')

args=commandArgs(trailingOnly=TRUE)

#shell('rscript tele_single.R update_index',wait = TRUE)
qtr_ref_date <- args[1]
week_ref_date <- args[2]

kidx_start = 5
ktickerData <- new.env()
data_start = qtr_ref_date
qtr_start = qtr_ref_date
week_start = week_ref_date

code<-code_get()
update_myidx(kidx_start,data_start,qtr_start,week_start)

msg_text <- 'update kidx complete'
#msg_text <- args[1]
#print("send message")

bot$sendMessage(chat_id = chat_id, text =msg_text)
