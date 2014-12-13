# Description:
#   Overlays funny things over images passed to it.
#   
# Dependencies:
#   None 
#   
# Configuration:
#   None
#   
# Commands:
#   hubot hipster me <img> - Overlay hipster glasses on a face.
#   hubot clown me <img>   - Overlay a clown nose on a face.
#   hubot scumbag me <img> - Overlay a scumbag on a face.
#   hubot jason me <img> - Overlay a jason on a face.
#   hubot rohan me <img> - Overlay a rohan mask on a face.
#   hubot mustache me <img> - Overlay a mustache on a face.
#   hubot sopa me <img> - Overlay a sopa (Stop Online Piracy Act) sign on a face.
#   hubot zedd me <img> - Overlays Zedd on a face.
#   hubot batman me <img> - Overlays a batman mask face.
#   hubot monocle me <img> - Overlays a monocle on a face.
#   hubot disapprove me <img> - Overlays a disapproval face.
#   hubot beard me <img> - Overlays a beard on a face.
#   hubot googly me <img> - Overlays googly eyes on a face.
#   hubot pipe me <img> - Overlays a pipe on a face.
#   
# Author:
#   unknown
#
module.exports = (robot) ->
  robot.respond /(hipster|clown|scumbag|rohan|jason|mustache|pipe|googly|beard|disapprove|monocle|zedd|batman|sopa)( me)? (.*)/i, (msg) ->
    type = msg.match[1]
    imagery = msg.match[3]

    if imagery.match /^https?:\/\//i
      msg.send "http://faceup.me/img?overlay=#{type}&src=#{imagery}"
    else
      imageMe msg, imagery, (url) ->
        msg.send "http://faceup.me/img?overlay=#{type}&src=#{url}"

imageMe = (msg, query, cb) ->
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(v: "1.0", rsz: '8', q: query)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData.results
      image  = msg.random images
      cb "#{image.unescapedUrl}"