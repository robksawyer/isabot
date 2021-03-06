# Description:
#   Grabs movie scores from Rotten Tomatoes
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_ROTTEN_TOMATOES_API_KEY - Sign up at http://developer.rottentomatoes.com
#
# Commands:
#   hubot rotten me <movie> - Grabs movie score from Rotten Tomatoes
#   
# Examples:
#   hubot rotten me inception
#   hubot rotten me the good, the bad, and the ugly
#
# Author:
#   unknown
#
module.exports = (robot) ->
  robot.respond /rotten me (.*)$/i, (msg) ->
    api_key = process.env.HUBOT_ROTTEN_TOMATOES_API_KEY
    
    unless api_key
      msg.send 'The environment variable $HUBOT_ROTTEN_TOMATOES_API_KEY needs to be set.'
      return
    
    title = msg.match[1]
    msg.http('http://api.rottentomatoes.com/api/public/v1.0/movies.json')
       .query
         apikey: api_key
         q: title
         page_limit: 1
       .get() (err, res, body) ->
         movie = JSON.parse(body)['movies'][0]
         
         unless movie?
           msg.send "Couldn't find that movie, sorry."
           return
         
         message = ""
         if movie['title']
          message += "#{movie['title']} (#{movie['year']})\n"

         if movie['runtime']
          message += "#{movie['runtime']} min, #{movie['mpaa_rating']}\n\n"

         if movie['ratings']['critics_score']
          message += "Critics:\t" + "#{movie['ratings']['critics_score']}%" + "\t\"#{movie['ratings']['critics_rating']}\"\n"
        
         if movie['ratings']['audience_score']
          message += "Audience:\t" + "#{movie['ratings']['audience_score']}%" + "\t\"#{movie['ratings']['audience_rating']}\"\n\n"
        
         if movie['critics_consensus']
          message += "#{movie['critics_consensus']}"

         msg.send message
