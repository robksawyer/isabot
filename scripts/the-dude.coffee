# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/dude/1.gif",
  "http://hubot-assets.s3.amazonaws.com/dude/2.gif",
"http://hubot-assets.s3.amazonaws.com/dude/3.gif",
"http://hubot-assets.s3.amazonaws.com/dude/4.gif",
"http://hubot-assets.s3.amazonaws.com/dude/5.gif",
"http://hubot-assets.s3.amazonaws.com/dude/6.gif",
"http://hubot-assets.s3.amazonaws.com/dude/7.gif",
"http://hubot-assets.s3.amazonaws.com/dude/8.gif",
"http://hubot-assets.s3.amazonaws.com/dude/9.gif",
"http://hubot-assets.s3.amazonaws.com/dude/10.gif"
]

module.exports = (robot) ->
  robot.respond /.*(dude).*/i, (msg) ->
    msg.send msg.random no_fucks
