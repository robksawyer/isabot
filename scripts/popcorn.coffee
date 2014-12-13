# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/popcorn/1.gif",
"http://hubot-assets.s3.amazonaws.com/popcorn/2.gif",
"http://hubot-assets.s3.amazonaws.com/popcorn/3.gif",
"http://hubot-assets.s3.amazonaws.com/popcorn/4.gif",
"http://hubot-assets.s3.amazonaws.com/popcorn/5.gif",
"http://hubot-assets.s3.amazonaws.com/popcorn/6.gif",
"http://hubot-assets.s3.amazonaws.com/popcorn/7.gif",
"http://hubot-assets.s3.amazonaws.com/popcorn/8.gif",
"http://hubot-assets.s3.amazonaws.com/popcorn/9.gif",
"http://hubot-assets.s3.amazonaws.com/popcorn/10.gif"
]

module.exports = (robot) ->
  robot.hear /.*(popcorn|grabs popcorn|get popcorn).*/i, (msg) ->
    msg.send msg.random no_fucks
