# Description:
#   Tell Hubot to send a user a message when present in the room.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot tell <username> <some message> - Sends a mesage to a user when they're available in the room.
#
# Author:
#   unknown
#
module.exports = (robot) ->
   localstorage = {}
   robot.respond /tell (\w*) (.*)/i, (msg) ->
     datetime = new Date()
     tellmessage = msg.match[1] + ": " + msg.message.user.name + " @ " + datetime.toTimeString() + " said: " + msg.match[2] + "\r\n"
     if localstorage[msg.match[1]] == undefined
       localstorage[msg.match[1]] = tellmessage
     else
       localstorage[msg.match[1]] += tellmessage
     return

   robot.hear /./i, (msg) ->
     # just send the messages if they are available...
     if localstorage[msg.message.user.name] != undefined
       tellmessage = localstorage[msg.message.user.name]
       delete localstorage[msg.message.user.name]
       msg.send tellmessage
     return
