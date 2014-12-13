# Carlton Celebration
#
# dance - Display a dancing Carlton
#

carltons = [
  "http://hubot-assets.s3.amazonaws.com/couch/1.gif",
  "http://hubot-assets.s3.amazonaws.com/couch/2.gif"

]

module.exports = (robot) ->
  robot.hear /.*(couch|fuck yo couch).*/i, (msg) ->
    msg.send msg.random carltons
