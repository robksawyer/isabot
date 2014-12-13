# Description:
#   Returns a tweet from a specific user.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot [twitter|lasttweet] <username> - Returns a tweet from Twitter <username>.
#
# Author:
#   unknown
#
module.exports = (robot) ->
  robot.respond /(twitter|lasttweet) (.+)$/i, (msg) ->
   username = msg.match[2]
   msg.http("http://api.twitter.com/1/statuses/user_timeline/#{escape(username)}.json?count=1")
    .get() (err, res, body) ->
      response = JSON.parse body
      if response[0]
       msg.send response[0]["text"]
      else
       msg.send "Error"