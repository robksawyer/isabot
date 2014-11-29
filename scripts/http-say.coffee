# Description:
#   "Simple path to have Hubot echo out anything in the message querystring for a given room."
#
# Dependencies:
#   "querystring": "0.1.0"
#
# Configuration:
#   None
#
# Commands:
#   GET /hubot/say?message=<message>[&room=<room>&type=<type]
#
# Authors:
#   ajacksified

querystring = require('querystring')

module.exports = (robot) ->
  robot.router.get "/hubot/say", (req, res) ->
    query = querystring.parse(req._parsedUrl.query)

    user = {}
    user.room = query.room if query.room
    user.type = query.type if query.type

    if query.password = "sharetheair" #lol hardcoded password
      res.end "Said #{query.message}"
      robot.send(user, query.message)
    else
      res.end "ERROR::1924" #lol arbitrary error code