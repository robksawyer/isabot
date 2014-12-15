# Description:
#   A simple yes or no kind of script.
#  
# Dependencies:
#   None 
#   
# Configuration:
#   None
#   
# Commands:
#   hubot do you agree? - Answers yes or no
#
# Author:
#   github.com/robksawyer
#  

yess = [
  "Do it."
  "Do it!"
  "Yes"
  "Yeah, of course."
  "Yeah"
  "Yeah!"
]

nos = [
  "Nah"
  "No way."
  "Ummm... No."
  "No"
  "Really?"
  "Nope."
  "I don't have an opinion on it."
]
module.exports = (robot) ->

  robot.respond /(.*)?you (think|agree|disagree|approve|ok with|like|enjoy|want)(.*|\?)?/i, (msg) ->
    rand = Math.round(Math.random())
    console.log "Making a decision and it is " + rand
    if rand is 1
      msg.send msg.random yess
    else 
      msg.send msg.random nos
