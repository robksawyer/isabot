# Description:
#   Displays an animated gif related to accepting a challenge.
#   
# Dependencies:
#   None 
#   
# Configuration:
#   None
#   
# Commands:
#   challenge accepted - Displays gif related to accepting challenge
#
# Author:
#   unknown
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/challenge_accepted/1.png"
]

module.exports = (robot) ->
  robot.hear /.*(challenge accepted).*/i, (msg) ->
    msg.send msg.random carltons