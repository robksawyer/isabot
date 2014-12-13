# Description:
#   Puts it back on the table.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   （╯°□°）╯︵ ┻━┻ - Responds with ┬──┬ ノ( ゜-゜ノ)
#
# Author:
#   unknown
#
module.exports = (robot) ->

  robot.hear /（╯°□°）╯︵ ┻━┻/i, (msg) ->
    msg.send('┬──┬ ノ( ゜-゜ノ)')
