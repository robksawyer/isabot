# Description:
#   Responds with good bye to let you know it cares.
#   
# Dependencies:
#   None 
#   
# Configuration:
#   None
#   
# Commands:
#   [bye|later|see ya|see you|take care]
#
# Author:
#   unknown
#
goodbye = (name) ->
  index = parseInt((Math.random() * goodbyes.length) >> 0)
  message = goodbyes[index]
  message.replace(/{name}/, name);

goodbyes = [
  "Bye, {name}.",
  "Later, {name}.",
  "Take care, {name}."
]

module.exports = (robot) ->
  robot.hear /(bye|later|see y(ou|a)|take care),?\s(.*)/i, (msg) ->
    if robot.name.toLowerCase() == msg.match[3].toLowerCase()
      msg.send(goodbye(msg.message.user.name))