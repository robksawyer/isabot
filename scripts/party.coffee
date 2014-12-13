# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/party/1.gif",
"http://hubot-assets.s3.amazonaws.com/party/2.gif",
"http://hubot-assets.s3.amazonaws.com/party/3.gif",
"http://hubot-assets.s3.amazonaws.com/party/4.gif",
"http://hubot-assets.s3.amazonaws.com/party/5.gif",
"http://hubot-assets.s3.amazonaws.com/party/6.gif",
"http://hubot-assets.s3.amazonaws.com/party/7.gif",
"http://hubot-assets.s3.amazonaws.com/party/8.gif",
"http://hubot-assets.s3.amazonaws.com/party/9.gif",
"http://hubot-assets.s3.amazonaws.com/party/10.gif",
"http://hubot-assets.s3.amazonaws.com/party/11.gif",

]

module.exports = (robot) ->
  robot.respond /.*(party|happy hour|drink|beer|bar).*/i, (msg) ->
    msg.send msg.random no_fucks
