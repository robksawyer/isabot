# Description:
#   Automatically add mustaches to any images it can
#
# Dependencies:
#   None 
#   
# Configuration:
#   None
#   
# Commands:
#   Just post an image and watch the magic happen.
#
# Author:
#   unknown
#
module.exports = (robot) ->
  robot.hear /^(https?:\/\/[^ #]+\.(?:png|jpg|jpeg))(?:[#]\.png)?$/i, (msg) ->
    src = msg.match[1]

    unless src.match(/^http:\/\/mustachify.me/)
      msg.http("http://stacheable.herokuapp.com")
        .query(src: src)
        .get() (err, res, body) ->
          img = JSON.parse body

          if img.count > 0
            msg.send "http://mustachify.me/?src=#{escape img.src}"