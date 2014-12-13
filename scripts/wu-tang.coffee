# Description:
#   Responds with something that the Wu-Tang Clan might say. 
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot wu-tang - Responds with "AINT NOTHING TO FUCK WITH!".
#
# Author:
#   unknown
#
quotes = [
  "AINT NOTHING TO FUCK WITH!"
]

module.exports = (robot) ->
  robot.hear /(wu-tang)/i, (msg) ->
    msg.send msg.random quotes
