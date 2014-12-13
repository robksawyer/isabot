# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/kelli/1.gif",
"http://hubot-assets.s3.amazonaws.com/kelli/2.gif",
"http://hubot-assets.s3.amazonaws.com/kelli/3.gif",
"http://hubot-assets.s3.amazonaws.com/kelli/4.gif",
"http://hubot-assets.s3.amazonaws.com/kelli/5.gif",
"http://hubot-assets.s3.amazonaws.com/kelli/6.gif",
"http://hubot-assets.s3.amazonaws.com/kelli/7.gif",
"http://hubot-assets.s3.amazonaws.com/kelli/8.gif",
"http://hubot-assets.s3.amazonaws.com/kelli/9.gif",

]

module.exports = (robot) ->
  robot.respond /.*(kelli|bruce).*/i, (msg) ->
    msg.send msg.random no_fucks
