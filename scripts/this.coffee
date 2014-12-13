# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/this/1.gif",
"http://hubot-assets.s3.amazonaws.com/this/2.jpg",
"http://hubot-assets.s3.amazonaws.com/this/3.gif",
"http://hubot-assets.s3.amazonaws.com/this/4.gif",
"http://hubot-assets.s3.amazonaws.com/this/5.gif",
"http://hubot-assets.s3.amazonaws.com/this/6.jpg",
"http://hubot-assets.s3.amazonaws.com/this/7.jpg",

]

module.exports = (robot) ->
  robot.respond /.*(this).*/i, (msg) ->
    msg.send msg.random no_fucks
