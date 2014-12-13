# Description:
#   It's Eve Time Ya'll. Does the work to help you figure out evetime.
#   
# Dependencies:
#   None 
#   
# Configuration:
#   None
#   
# Commands:
#   hubot evetime
#
# Author:
#   ajacksified

module.exports = (robot) ->
  robot.respond /evetime/i, (msg) ->
    date = new Date()
    msg.send("EVEtime is #{date.toGMTString()}")