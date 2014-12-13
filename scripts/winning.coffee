# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/winning/1.gif",
"http://hubot-assets.s3.amazonaws.com/winning/2.gif",
"http://hubot-assets.s3.amazonaws.com/winning/3.gif",
"http://hubot-assets.s3.amazonaws.com/winning/4.gif",
"http://hubot-assets.s3.amazonaws.com/winning/5.gif",

]

module.exports = (robot) ->
  robot.respond /.*(winning|for the win|ftw).*/i, (msg) ->
    msg.send msg.random no_fucks
