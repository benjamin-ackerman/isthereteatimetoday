library(shiny)


shinyServer(function(input, output) {

  if(weekdays(as.POSIXlt(Sys.time(), tz="America/New_York")) == "Wednesday"){
    output$answer <- renderText("YES!")
    output$subtitle <- renderText("3 pm in the Genome Cafe, see you there!")
    links = c("https://media.giphy.com/media/MOWPkhRAUbR7i/giphy.gif",
              "https://media.giphy.com/media/11sBLVxNs7v6WA/giphy.gif",
              "https://media.giphy.com/media/31lPv5L3aIvTi/giphy.gif",
              "https://media.giphy.com/media/y8Mz1yj13s3kI/giphy.gif",
              "https://media.giphy.com/media/cIQkxw4G65TG/giphy.gif")
    download.file(sample(links,1),"www/img.gif")
  }
  
  else if(weekdays(as.POSIXlt(Sys.time(), tz="America/New_York")) == "Tuesday"){
    output$answer <- renderText("NO")
    output$subtitle <- renderText("But check back tomorrow! :)")
    links = c("https://media.giphy.com/media/KyGEqzh9PAHPDZX5ps/giphy.gif",
              "https://itsnothouitsme.files.wordpress.com/2015/07/anticipation-gif.gif",
              "https://media.giphy.com/media/GnX3TwP6fQRMY/giphy.gif",
              "https://media.giphy.com/media/fV7xZPk6aeiUU/giphy.gif",
              "https://media.giphy.com/media/hhGnYTgU2Dplu/giphy.gif")
    download.file(sample(links,1),"www/img.gif")
  }
  
  else{
    output$answer <- renderText("NO")
    output$subtitle <- renderText("Try again on Wednesday!")
    links = c("https://media.giphy.com/media/1BXa2alBjrCXC/giphy.gif",
              "https://www.dicasdemulher.com.br/wp-content/uploads/2016/04/ama-cachorro-8.gif",
              "https://media.giphy.com/media/OPU6wzx8JrHna/giphy.gif",
              "https://media.giphy.com/media/AYKv7lXcZSJig/giphy.gif",
              "https://media.giphy.com/media/CMRWlA55AYLpS/giphy.gif")
    download.file(sample(links,1),"www/img.gif")
  }
})
