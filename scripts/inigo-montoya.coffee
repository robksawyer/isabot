# Description:
#   Responds in a snarky way when someone uses the word inconceivable. And for fun
#   it responds to Inigo Montoya.
#   
#   Inigo Montoya is a fictional character in William Goldman's 1973 novel The Princess Bride. 
#   In Rob Reiner's 1987 film adaptation he was portrayed by Mandy Patinkin.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   inconceivable - Responds with "You keep using that word. I do not think it means what you think it means."
#   [inigo|montoya] - Responds with "Hello. My name is Inigo Montoya. You killed my father. Prepare to die."
#
# Author:
#   unknown
#
module.exports = (robot) ->
  robot.hear /inconceivable/i, (msg) ->
    msg.reply "You keep using that word. I do not think it means what you think it means."

  robot.hear /(inigo|montoya)/i, (msg) ->
    msg.reply "Hello. My name is Inigo Montoya. You killed my father. Prepare to die."
