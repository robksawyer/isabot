# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/smoke/1.gif",
"http://hubot-assets.s3.amazonaws.com/smoke/2.gif",
"http://hubot-assets.s3.amazonaws.com/smoke/3.gif",
"http://hubot-assets.s3.amazonaws.com/smoke/4.gif",
"http://hubot-assets.s3.amazonaws.com/smoke/5.gif",
"http://hubot-assets.s3.amazonaws.com/smoke/6.gif",
"http://hubot-assets.s3.amazonaws.com/smoke/7.gif",
"http://hubot-assets.s3.amazonaws.com/smoke/8.gif",
"http://hubot-assets.s3.amazonaws.com/smoke/9.gif",
"http://hubot-assets.s3.amazonaws.com/smoke/10.gif",

]

module.exports = (robot) ->
  robot.hear /.*(smoke|cig).*/i, (msg) ->
    msg.send msg.random no_fucks
