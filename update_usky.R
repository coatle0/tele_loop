library(telegram.bot)
bot=Bot(token=Sys.getenv("telegram_bot_token"))
kw_bot=Bot(token=Sys.getenv("telegram_kw_token"))
chat_id <- 1278251780

args=commandArgs(trailingOnly=TRUE)

#shell('rscript tele_single.R update_index',wait = TRUE)
ref_date <- args[1]
th_date <- args[2]

tickerData <- new.env()

code<-code_get()
usky_lfcy(ref_date,th_date)


msg_text <- 'usky update complete'
#msg_text <- args[1]
#print("send message")

bot$sendMessage(chat_id = chat_id, text =msg_text)
