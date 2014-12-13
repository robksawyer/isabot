# Description:
#   Build sparklines out of data sent with Clark. 
#   You can see the commands at https://www.npmjs.com/package/clark
#
# Dependencies:
#   clark
#   
# Configuration:
#   None
#  
# Commands:
#   hubot clark <data> - build sparklines out of data
#   hubot clark 1 2 3 4 5 -  ▁▂▄▆█
# 
# Author:
#   unknown
#   

clark = require('clark').clark

module.exports = (robot) ->
  robot.respond /clark (.*)/i, (msg) ->
    data = msg.match[1].trim().split(' ')
    msg.send(clark(data))

