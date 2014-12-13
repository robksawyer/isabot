# Description:
#   Displays an image related to not accepting a challenge.
#   
# Dependencies:
#   None 
#   
# Configuration:
#   None
#   
# Commands:
#   challenge denied - Displays image related to not accepting the challenge
#
# Author:
#   unknown
#
carltons = [
  "http://hubot-assets.s3.amazonaws.com/challenge_denied/1.jpg"
]

module.exports = (robot) ->
  robot.hear /.*(challenge denied).*/i, (msg) ->
    msg.send msg.random carltons