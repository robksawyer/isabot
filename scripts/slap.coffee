# Description:
#   Slaps a user.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot slap <name> - slap <name> around 
#
# Author:
#   unknown
#
module.exports = (robot) ->
  robot.respond /slap\s(.*)/i, (msg) ->
    name = msg.match[1].trim()
    msg.send("*" + slap(name) + "*")

slap = (name) ->
  slaps[(Math.random() * slaps.length) >> 0].replace(/{name}/, name);

slaps = [
  "slaps {name} around with a large trout"
]