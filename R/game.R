##'@export
guess <- function(){
  n <- round(runif(1,min = 1,max = 100))
  messages <- "一个猜数字的游戏，玩一下么"
  button2 <- tcltk::tkmessageBox(title = 'Message',message = messages,type = 'yesno')
  button2 <- tcltk::tclvalue(button2)
  if (button2 == "yes"){
    messages <- "这是一个1-100之间的整数，请猜一猜它的大小\n"
    button2 <- as.numeric(readline(prompt = messages))
    while (button2 != n){
      if(button2 > n){
        messages <- "猜大了。请重新猜！\n"
        button2 <- as.numeric(readline(prompt = messages))
      } else {
        messages <- "猜小了，请重新猜！\n"
        button2 <- as.numeric(readline(prompt = messages))
      }
    }
    messagesn <- "恭喜你猜对了！"
    tcltk::tkmessageBox(title = 'Message',message = messagesn,type = 'ok')

  }else{
    messagesn2 <- "你不玩好可惜啊！"
    tcltk::tkmessageBox(title = 'Message',message = messagesn2,type = 'ok')
  }
}
