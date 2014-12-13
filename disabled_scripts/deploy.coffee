# Deploy with capistrano
#
# Usage:
# deploy <repo>
# what can you deploy?
#
hackers = [
  "http://hubot-assets.s3.amazonaws.com/hackers/1.gif",
  "http://hubot-assets.s3.amazonaws.com/hackers/2.gif",
  "http://hubot-assets.s3.amazonaws.com/hackers/3.gif",
  "http://hubot-assets.s3.amazonaws.com/hackers/4.gif",
  "http://hubot-assets.s3.amazonaws.com/hackers/5.gif",
  "http://hubot-assets.s3.amazonaws.com/hackers/6.gif",
  "http://hubot-assets.s3.amazonaws.com/hackers/7.gif",
]

#array of the repo names to match and deploy
repos = [
  "omp",
  "boss",
  "uploaders",
  "biemedia",
  "html5_midlayer",
  "html5_player",
  "html5_clients",
  "flex_clients",
  "test"
]

module.exports = (robot) ->
  robot.respond /deploy (.+)/i, (msg) ->
    if msg.match[1] in repos
      #send waiting messages
      msg.send 'Attempting deploy. Please hold.'
      msg.send msg.random hackers

      #hit the sinatra app to do the deploy
      msg.http("http://localhost:9393/deploy/#{msg.match[1]}")
      .get() (err, res, body) ->
        if res.statusCode == 404
          msg.send 'Something went horribly wrong'
        else
          msg.send 'Deployed like a boss'
          msg.send 'http://replygif.net/i/742.gif'
    else
      msg.send 'Nope. I dont know what that is. Try deploying one of these: ' + repos.join(", ")


  robot.respond /(what can you deploy?)/i, (msg) ->
    msg.send 'I can deploy the shit out of ' + repos.join(", ")

  robot.respond /update (.+)/i, (msg) ->
    if msg.match[1] in repos
      #send waiting messages
      msg.send 'Attempting update. Please hold.'
      msg.send msg.random hackers

      #hit the sinatra app to do the deploy
      msg.http("http://localhost:9393/update/#{msg.match[1]}")
      .get() (err, res, body) ->
        if res.statusCode == 404
          msg.send 'Something went horribly wrong'
        else
          msg.send 'Updated like a boss'
          msg.send 'http://replygif.net/i/742.gif'
    else
      msg.send 'Nope. I dont know what that is. Try updating one of these: ' + repos.join(", ")

  robot.respond /invalidate (.+)/i, (msg) ->
    if msg.match[1] in repos
      #send waiting messages
      msg.send 'Attempting invalidation. Please hold.'
      msg.send msg.random hackers

      #hit the sinatra app to do the deploy
      msg.http("http://localhost:9393/invalidate/#{msg.match[1]}")
      .get() (err, res, body) ->
        if res.statusCode == 404
          msg.send 'Something went horribly wrong'
        else
          msg.send 'Invalidated like a boss'
          msg.send 'http://replygif.net/i/742.gif'
    else
      msg.send 'Nope. I dont know what that is. Try invalidating one of these: ' + repos.join(", ")

  robot.respond /stage (.+)/i, (msg) ->
    if msg.match[1] in repos
      #send waiting messages
      msg.send 'Attempting deploy to staging environment. Please hold.'
      msg.send msg.random hackers

      #hit the sinatra app to do the deploy
      msg.http("http://localhost:9393/stage/#{msg.match[1]}")
      .get() (err, res, body) ->
        if res.statusCode == 404
          msg.send 'Something went horribly wrong'
        else
          msg.send 'Deployed to staging environment like a boss'
          msg.send 'http://replygif.net/i/742.gif'
    else
      msg.send 'Nope. I dont know what that is. Try staging one of these: ' + repos.join(", ")