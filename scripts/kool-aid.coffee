# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/kool-aid/1.gif",
  "http://hubot-assets.s3.amazonaws.com/kool-aid/2.gif"
]

module.exports = (robot) ->
  robot.respond /.*(oh yeah).*/i, (msg) ->
    msg.send msg.random carltons
