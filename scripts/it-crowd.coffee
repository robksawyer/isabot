# Description:
#   Responds with the obvious thing to do.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot [doesn't work|won't work|broken] - Responds with "Have you tried turning it off and back on again?"
#
# Author:
#   unknown
#
module.exports = (robot) ->
  robot.respond /.*(doesn't work|won't work|broken).*/i, (msg) ->
    msg.send "Have you tried turning it off and back on again?"
