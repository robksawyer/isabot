# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/money/1.jpg",
  "http://hubot-assets.s3.amazonaws.com/money/2.jpg",
  "http://hubot-assets.s3.amazonaws.com/money/3.gif",
  "http://hubot-assets.s3.amazonaws.com/money/4.jpg",
  "http://hubot-assets.s3.amazonaws.com/money/5.gif",
  "http://hubot-assets.s3.amazonaws.com/money/6.gif",

]

module.exports = (robot) ->
  robot.hear /.*(monies|money).*/i, (msg) ->
    msg.send msg.random no_fucks
