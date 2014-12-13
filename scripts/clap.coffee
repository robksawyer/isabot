# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/clap/1.gif",
"http://hubot-assets.s3.amazonaws.com/clap/2.gif",
"http://hubot-assets.s3.amazonaws.com/clap/3.gif",
"http://hubot-assets.s3.amazonaws.com/clap/4.gif",
"http://hubot-assets.s3.amazonaws.com/clap/5.gif",
"http://hubot-assets.s3.amazonaws.com/clap/6.gif",
"http://hubot-assets.s3.amazonaws.com/clap/7.gif",
"http://hubot-assets.s3.amazonaws.com/clap/8.gif",
"http://hubot-assets.s3.amazonaws.com/clap/9.gif",
"http://hubot-assets.s3.amazonaws.com/clap/10.gif"
]

module.exports = (robot) ->
  robot.hear /.*(clap|slow clap|bravo).*/i, (msg) ->
    msg.send msg.random no_fucks
