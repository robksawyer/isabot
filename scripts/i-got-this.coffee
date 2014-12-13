# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/i-got-this/1.gif",
  "http://hubot-assets.s3.amazonaws.com/i-got-this/2.jpg",
"http://hubot-assets.s3.amazonaws.com/i-got-this/3.jpg",
"http://hubot-assets.s3.amazonaws.com/i-got-this/4.png",
"http://hubot-assets.s3.amazonaws.com/i-got-this/5.jpg",
"http://hubot-assets.s3.amazonaws.com/i-got-this/6.gif",
"http://hubot-assets.s3.amazonaws.com/i-got-this/7.jpg",
"http://hubot-assets.s3.amazonaws.com/i-got-this/8.png",
"http://hubot-assets.s3.amazonaws.com/i-got-this/9.jpg"
]

module.exports = (robot) ->
  robot.respond /.*(i got this).*/i, (msg) ->
    msg.send msg.random no_fucks
