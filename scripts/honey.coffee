# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/honey/1.jpg",
  "http://hubot-assets.s3.amazonaws.com/honey/2.jpg",
"http://hubot-assets.s3.amazonaws.com/honey/3.jpg",
"http://hubot-assets.s3.amazonaws.com/honey/4.jpg",
"http://hubot-assets.s3.amazonaws.com/honey/5.jpg",
"http://hubot-assets.s3.amazonaws.com/honey/6.jpg",
"http://hubot-assets.s3.amazonaws.com/honey/7.jpg",
"http://hubot-assets.s3.amazonaws.com/honey/8.jpg",
"http://hubot-assets.s3.amazonaws.com/honey/9.jpg",
"http://hubot-assets.s3.amazonaws.com/honey/10.jpg",
]

module.exports = (robot) ->
  robot.hear /.*(honey|badger|honey badger don't care|don't care|don't give a shit).*/i, (msg) ->
    msg.send msg.random no_fucks
