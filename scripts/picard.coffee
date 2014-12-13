# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/picard/1.gif",
"http://hubot-assets.s3.amazonaws.com/picard/2.gif",
"http://hubot-assets.s3.amazonaws.com/picard/3.gif",
"http://hubot-assets.s3.amazonaws.com/picard/4.gif"

]

module.exports = (robot) ->
  robot.hear /.*(make it so|boldly go).*/i, (msg) ->
    msg.send msg.random no_fucks
