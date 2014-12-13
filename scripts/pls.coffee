# Description:
#  Makes a please face.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot pls - Resonds with a please face.
#
# Author:
#   unknown
#
module.exports = (robot) ->
  robot.respond /pls/i, (msg) ->
    msg.send('http://i.imgur.com/h62nUgj.gif')