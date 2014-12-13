# Description:
#   Gets angry when disassemble is used in a sentence.
#   
# Dependencies:
#   None 
#   
# Configuration:
#   None
#   
# Commands:
#   hubot disassemble - NO DISASSEMBLE
#
# Author:
#   unknown
#
#
module.exports = (robot) ->
  robot.hear /disassemble/i, (msg) ->
    msg.send 'NO DISASSEMBLE!'
