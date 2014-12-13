# Bonehead Play Of the Week

carltons = [
  "http://cdn1.sbnation.com/uploads/chorus_image/image/3754087/stillbetterthancassel.0_standard_709.0.gif"

]

module.exports = (robot) ->
  robot.hear /.*(bpow).*/i, (msg) ->
    msg.send msg.random carltons
