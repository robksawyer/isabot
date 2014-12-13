# Description:
#   Returns a cow that says what you want.
# 
# Dependencies:
#   None 
#   
# Configuration:
#   None
#    
# Commands:
#   hubot cowsay me <statement> - Returns a cow that says what you want.
#
# Author:
#  unknown
#
module.exports = (robot) ->
  robot.respond /cowsay( me)? (.*)/i, (msg) ->
    msg
      .http("http://cowsay.morecode.org/say")
      .query(format: 'text', message: msg.match[2])
      .get() (err, res, body) ->
        msg.send body