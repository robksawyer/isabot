# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/no-fuck/1.jpg",
  "http://hubot-assets.s3.amazonaws.com/no-fuck/2.jpg",
"http://hubot-assets.s3.amazonaws.com/no-fuck/3.jpg",
"http://hubot-assets.s3.amazonaws.com/no-fuck/4.jpg",
"http://hubot-assets.s3.amazonaws.com/no-fuck/5.jpg",
"http://hubot-assets.s3.amazonaws.com/no-fuck/6.jpg",
"http://hubot-assets.s3.amazonaws.com/no-fuck/7.jpg",
"http://hubot-assets.s3.amazonaws.com/no-fuck/8.jpg",
"http://hubot-assets.s3.amazonaws.com/no-fuck/9.jpg",
"http://hubot-assets.s3.amazonaws.com/no-fuck/10.jpg",
"http://hubot-assets.s3.amazonaws.com/no-fuck/11.jpg",
"http://hubot-assets.s3.amazonaws.com/no-fuck/12.gif",
]

module.exports = (robot) ->
  robot.hear /.*(not a single fuck was given|I don't give a fuck|no fucks).*/i, (msg) ->
    msg.send msg.random no_fucks
