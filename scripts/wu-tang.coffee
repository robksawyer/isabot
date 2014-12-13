# Display a picture of Michael Jordan if anyone invokes "jordan" or says "23"
# Cause Jordan is God. So much more than Steve Jobs :D 

images = [
  "AINT NOTHING TO FUCK WITH!"
]

module.exports = (robot) ->
  robot.hear /(wu-tang)/i, (msg) ->
    msg.send msg.random images
