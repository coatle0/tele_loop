library(telegram.bot)
bot=Bot(token="5824250303:AAF30nE1zYlP28DzS-Gd69yAegN-LgHU_ag")
chat_id <- 1278251780

#bot_gosu = Bot(token = "7297044765:AAHxCAZ_ETjoG3lyDTkvggM3i4drCL_5Y4g")

#args=commandArgs(trailingOnly=TRUE)
msg_text <- 'update uidx'
#msg_text <- args[1]
print("send message")

bot$sendMessage(chat_id = chat_id, text =msg_text)

setwd('~')
tickerData <- new.env()


args=commandArgs(trailingOnly=TRUE)

#shell('rscript tele_single.R update_index',wait = TRUE)
qtr_ref_date <- args[1]
week_ref_date <- args[2]
idx_fn <- 'us_idx'
update_myuidx(qtr_ref_date,week_ref_date,idx_fn)
