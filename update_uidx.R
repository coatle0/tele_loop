library(telegram.bot)
bot=Bot(token=Sys.getenv("telegram_bot_token"))
kw_bot=Bot(token=Sys.getenv("telegram_kw_token"))
chat_id <- 1278251780


setwd('~')
tickerData <- new.env()


args=commandArgs(trailingOnly=TRUE)

#shell('rscript tele_single.R update_index',wait = TRUE)
qtr_ref_date <- args[1]
week_ref_date <- args[2]
idx_fn <- 'us_idx'
update_myuidx(qtr_ref_date,week_ref_date,idx_fn)

msg_text <- 'update uidx complete'
#msg_text <- args[1]
#print("send message")

bot$sendMessage(chat_id = chat_id, text =msg_text)

