# Description:
#   Show a random image from peopleofwalmart.com
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot walmart me - Show random Walmart image
#   hubot mart me - Show random Walmart image
#
# Author:
#   Fixed by robksawyer
#
Util = require('util')

module.exports = (robot) ->
  robot.respond /(wal)?mart( me)?/i, (msg) ->
    random = Math.floor(Math.random() * 770)
    msg.http("http://www.peopleofwalmart.com/photos/random-photos/page/" + random)
    .get() (err, res, body) ->
      col1 = body.indexOf '<div class="art-l">'
      if (col1 != -1)
        body = body.substring col1
        match = body.match /http:\/\/media.peopleofwalmart.com\/wp-content\/uploads\/\d\d\d\d\/\d\d\/.+?\.jpg/g
        if (match) 
          msg.send "#{Util.inspect(match[0])}"
