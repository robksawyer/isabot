# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/jackie/1.png"

]

module.exports = (robot) ->
  robot.hear /.*(wut).*/i, (msg) ->
    msg.send msg.random carltons
