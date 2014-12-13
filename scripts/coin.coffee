# Description:
#   Helps you decide between two things by flipping a coin.
# 
# Dependencies:
#   None 
#   
# Configuration:
#   None
#  
# Commands:
#   hubot [throw|flip|toss] a coin - Gives you heads or tails
#
# Author:
#   unknown
#

thecoin = ["heads", "tails"]

module.exports = (robot) ->
  robot.respond /(throw|flip|toss) a coin/i, (msg) ->
    msg.reply msg.random thecoin
