library(telegram.bot)
bot=Bot(token="5824250303:AAF30nE1zYlP28DzS-Gd69yAegN-LgHU_ag")
chat_id <- 1278251780

args=commandArgs(trailingOnly=TRUE)

#shell('rscript tele_single.R update_index',wait = TRUE)
ref_date <- args[1]
idx_fn <- args[2]

tickerData <- new.env()

code<-code_get()
usky_lfcy(ref_date,idx_fn)


msg_text <- 'usky update complete'
#msg_text <- args[1]
#print("send message")

bot$sendMessage(chat_id = chat_id, text =msg_text)
