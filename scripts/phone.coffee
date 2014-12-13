# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/phone/1.gif",
  "http://hubot-assets.s3.amazonaws.com/phone/2.gif",
  "http://hubot-assets.s3.amazonaws.com/phone/3.gif"


]

module.exports = (robot) ->
  robot.respond /.*(phone company|phone).*/i, (msg) ->
    msg.send msg.random no_fucks
