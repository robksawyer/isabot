# Display a picture of Michael Jordan if anyone invokes "jordan" or says "23"
# Cause Jordan is God. So much more than Steve Jobs :D 

images = [
  "THEM AIN'T JORDANS!"
]

module.exports = (robot) ->
  robot.respond /(egypt|22)/i, (msg) ->
    msg.send msg.random images