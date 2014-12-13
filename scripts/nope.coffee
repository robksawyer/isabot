# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/nope/1.jpg",
  "http://hubot-assets.s3.amazonaws.com/nope/2.jpg",
"http://hubot-assets.s3.amazonaws.com/nope/3.jpg",
"http://hubot-assets.s3.amazonaws.com/nope/4.jpg",
"http://hubot-assets.s3.amazonaws.com/nope/5.jpg",
"http://hubot-assets.s3.amazonaws.com/nope/6.gif",
"http://hubot-assets.s3.amazonaws.com/nope/7.gif",
"http://hubot-assets.s3.amazonaws.com/nope/8.gif",
"http://hubot-assets.s3.amazonaws.com/nope/9.gif",
"http://hubot-assets.s3.amazonaws.com/nope/10.jpg"
]

module.exports = (robot) ->
  robot.hear /.*(nope).*/i, (msg) ->
    msg.send msg.random no_fucks
