# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/wwebsite/1.jpg",
"http://hubot-assets.s3.amazonaws.com/wwebsite/2.jpg",
"http://hubot-assets.s3.amazonaws.com/wwebsite/3.jpg",
"http://hubot-assets.s3.amazonaws.com/wwebsite/4.jpg",
"http://hubot-assets.s3.amazonaws.com/wwebsite/5.jpg",
"http://hubot-assets.s3.amazonaws.com/wwebsite/6.jpg",
"http://hubot-assets.s3.amazonaws.com/wwebsite/7.jpg",
"http://hubot-assets.s3.amazonaws.com/wwebsite/8.jpg",
]

module.exports = (robot) ->
  robot.hear /.*(wwebsite).*/i, (msg) ->
    msg.send msg.random no_fucks
