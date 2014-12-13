# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/hulk/4.gif"

]

module.exports = (robot) ->
  robot.hear /.*(throw a bear|fuck yo bear).*/i, (msg) ->
    msg.send msg.random carltons
