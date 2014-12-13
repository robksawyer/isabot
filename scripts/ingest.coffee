# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/ingest/1.gif",

]

module.exports = (robot) ->
  robot.hear /.*(ingest).*/i, (msg) ->
    msg.send msg.random no_fucks
