# Description:
#   Runs a bit of javascript code in a sandbox.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot [sandbox|run] <javascript> - Runs javascript in a sandbox! 
#
# Author:
#   unknown
#

sandbox = require('sandbox')

module.exports = (robot) ->
  robot.respond /(run|sandbox) (.*)/i, (msg) ->
    sandbox = new Sandbox
    sandbox.run(msg.match[2], (output) ->
      msg.send output.result
    )
