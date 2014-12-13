# Deploy with capistrano
#
# Usage:
# deploy <repo>
# what can you deploy?
#

module.exports = (robot) ->
  robot.respond /add to play (.+)/i, (msg) ->
    #send waiting messages
    msg.send 'Stealing the hell out of that song. Please hold.'

    #hit the sinatra app to do the deploy
    song = encodeURIComponent(msg.match[1])
    msg.http("http://localhost:9394/download/#{song}")
    .get() (err, res, body) ->
      if res.statusCode == 404
        msg.send 'Something went horribly wrong'
      else
        msg.send 'Stolen like a boss.'
        msg.send 'http://hubot-assets.s3.amazonaws.com/pirate.jpg'



