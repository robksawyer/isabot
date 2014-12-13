# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/challenge_accepted/1.png"

]

module.exports = (robot) ->
  robot.hear /.*(challenge accepted).*/i, (msg) ->
    msg.send msg.random carltons