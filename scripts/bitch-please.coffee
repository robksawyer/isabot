# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/bitch-please/1.gif",
  "http://hubot-assets.s3.amazonaws.com/bitch-please/2.gif",
  "http://hubot-assets.s3.amazonaws.com/bitch-please/3.gif",
  "http://hubot-assets.s3.amazonaws.com/bitch-please/4.gif",
  "http://hubot-assets.s3.amazonaws.com/bitch-please/5.gif",
  "http://hubot-assets.s3.amazonaws.com/bitch-please/6.gif",
  "http://hubot-assets.s3.amazonaws.com/bitch-please/7.gif",
  "http://hubot-assets.s3.amazonaws.com/bitch-please/8.gif",
  "http://hubot-assets.s3.amazonaws.com/bitch-please/9.gif",
  "http://hubot-assets.s3.amazonaws.com/bitch-please/10.gif"


]

module.exports = (robot) ->
  robot.hear /.*(bitch please).*/i, (msg) ->
    msg.send msg.random carltons
