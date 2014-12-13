# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/jack_burton/1.gif",
"http://hubot-assets.s3.amazonaws.com/jack_burton/2.gif",
"http://hubot-assets.s3.amazonaws.com/jack_burton/3.gif",
"http://hubot-assets.s3.amazonaws.com/jack_burton/4.gif",
"http://hubot-assets.s3.amazonaws.com/jack_burton/5.gif",
"http://hubot-assets.s3.amazonaws.com/jack_burton/6.gif",
]

module.exports = (robot) ->
  robot.hear /.*(check is in the mail|all in the reflexes|jack burton).*/i, (msg) ->
    msg.send msg.random no_fucks
