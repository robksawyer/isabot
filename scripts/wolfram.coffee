# Description:
#   Allows hubot to answer almost any question by asking Wolfram Alpha
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_WOLFRAM_APPID - Grab this at http://products.wolframalpha.com/developers/.
#
# Commands:
#   hubot [question|wfa] <question> - Searches Wolfram Alpha for the answer to the question.
#
# Author:
#   unknown
#
Wolfram = require('wolfram').createClient(process.env.HUBOT_WOLFRAM_APPID)

module.exports = (robot) ->
  robot.respond /(question|wfa) (.*)$/i, (msg) ->
    console.log msg.match
    Wolfram.query msg.match[2], (e, result) ->
      # console.log result
      if result and result.length > 0
        msg.send result[1]['subpods'][0]['value']
      else
        msg.send 'Hmm...not sure'
