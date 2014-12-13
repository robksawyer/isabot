# Carlton Celebration
#
# dance - Display a dancing Carlton
#

module.exports = (robot) ->
  robot.respond /.*(doesn't work|won't work|broken).*/i, (msg) ->
    msg.send "Have you tried turning it off and back on again?"
