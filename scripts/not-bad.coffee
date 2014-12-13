# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/not-bad/1.jpg",
"http://hubot-assets.s3.amazonaws.com/not-bad/2.png",
"http://hubot-assets.s3.amazonaws.com/not-bad/3.jpg",
"http://hubot-assets.s3.amazonaws.com/not-bad/4.png",
"http://hubot-assets.s3.amazonaws.com/not-bad/5.jpg",
"http://hubot-assets.s3.amazonaws.com/not-bad/6.jpg",

]

module.exports = (robot) ->
  robot.hear /.*(not bad).*/i, (msg) ->
    msg.send msg.random no_fucks
