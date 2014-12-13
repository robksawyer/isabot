# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/wtf/1.gif",
"http://hubot-assets.s3.amazonaws.com/wtf/2.gif",
"http://hubot-assets.s3.amazonaws.com/wtf/3.gif",
"http://hubot-assets.s3.amazonaws.com/wtf/4.gif",
"http://hubot-assets.s3.amazonaws.com/wtf/5.gif",
"http://hubot-assets.s3.amazonaws.com/wtf/6.gif",
"http://hubot-assets.s3.amazonaws.com/wtf/7.gif",
"http://hubot-assets.s3.amazonaws.com/wtf/8.gif",
"http://hubot-assets.s3.amazonaws.com/wtf/9.gif",
"http://hubot-assets.s3.amazonaws.com/wtf/10.gif"

]

module.exports = (robot) ->
  robot.respond /.*(wtf|what the fuck|wtf?|what the fuck?).*/i, (msg) ->
    msg.send msg.random no_fucks
