library(telegram.bot)
bot=Bot(token=Sys.getenv("telegram_bot_token"))
kw_bot=Bot(token=Sys.getenv("telegram_kw_token"))
chat_id <- 1278251780
args=commandArgs(trailingOnly=TRUE)
#msg_text <- 'test'
msg_text <- args[1]
print("send message")

bot$sendMessage(chat_id = chat_id, text =msg_text)

kw_bot$sendMessage(chat_id = chat_id, text =msg_text)



