# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/hubot/sumbag.png",
"http://memegenerator.net/cache/instances/400x/12/12770/13076600.jpg"
]

module.exports = (robot) ->
  robot.hear /.*(scumbag hubot).*/i, (msg) ->
    msg.send msg.random no_fucks
