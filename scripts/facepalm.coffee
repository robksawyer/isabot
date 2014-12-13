# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/facepalm/1.gif",
  "http://hubot-assets.s3.amazonaws.com/facepalm/2.gif",
  "http://hubot-assets.s3.amazonaws.com/facepalm/3.gif",
  "http://hubot-assets.s3.amazonaws.com/facepalm/4.gif",
  "http://hubot-assets.s3.amazonaws.com/facepalm/5.gif",
  "http://hubot-assets.s3.amazonaws.com/facepalm/6.gif",
  "http://hubot-assets.s3.amazonaws.com/facepalm/7.gif",
  "http://hubot-assets.s3.amazonaws.com/facepalm/8.gif",
  "http://hubot-assets.s3.amazonaws.com/facepalm/9.gif",
  "http://hubot-assets.s3.amazonaws.com/facepalm/10.gif"
]

module.exports = (robot) ->
  robot.hear /.*(face palm|facepalm).*/i, (msg) ->
    msg.send msg.random carltons
