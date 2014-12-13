# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/mind-blown/1.gif",
"http://hubot-assets.s3.amazonaws.com/mind-blown/2.gif",
"http://hubot-assets.s3.amazonaws.com/mind-blown/3.gif",
"http://hubot-assets.s3.amazonaws.com/mind-blown/4.gif",
"http://hubot-assets.s3.amazonaws.com/mind-blown/5.gif",
"http://hubot-assets.s3.amazonaws.com/mind-blown/6.gif",
"http://hubot-assets.s3.amazonaws.com/mind-blown/7.gif",
"http://hubot-assets.s3.amazonaws.com/mind-blown/8.gif"
]

module.exports = (robot) ->
  robot.hear /.*(mind blown|mind = blown|whoa).*/i, (msg) ->
    msg.send msg.random no_fucks
