# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/fcs/11.jpg"

]

module.exports = (robot) ->
  robot.hear /.*(fixed fcs).*/i, (msg) ->
    msg.send msg.random carltons
