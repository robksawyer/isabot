# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/challenge_denied/1.jpg"

]

module.exports = (robot) ->
  robot.hear /.*(challenge denied).*/i, (msg) ->
    msg.send msg.random carltons