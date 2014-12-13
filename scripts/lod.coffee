# Description:
#   Shows disaproval.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot lod <name> - Responds with look of disapproval. <name> is optional.
#
# Author:
#   unknown
#
module.exports = (robot) ->
  robot.respond /lod\s?(.*)/i, (msg) ->
    response = 'ಠ_ಠ'

    name = msg.match[1].trim()
    response += " @" + name if name != ""

    msg.send(response)