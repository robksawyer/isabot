# Description:
#   FogBugz hubot helper.
#
# Dependencies:
#   xml2js
#   util
#
# Environment variables:
#   HUBOT_FOGBUGZ_HOST - FogBugz hostname (eg, yourco.fogbugz.com)
#   HUBOT_FOGBUGZ_TOKEN - Token for a user that can access all your cases.
# 
# Configuration:
#   Tokens only expire if you explicitly log them out, so you should be able to use this token forever without problems.
#   To get a FogBugz token, do this:
#   $ curl 'https://$HUBOT_FOGBUGZ_HOST/api.asp' -F'cmd=logon' # -F'email=$EMAIL' -F'password=$PASSWORD' 
#   
#   And copy the data inside the CDATA[...] block.
#
# Commands:
#   hubot [bug|case] <number> - provide helpful information about a FogBugz case
#
# Author:
#   unknown
#
Parser = require('xml2js').Parser
env = process.env
util = require 'util'

module.exports = (robot) ->
  if env.HUBOT_FOGBUGZ_HOST and env.HUBOT_FOGBUGZ_TOKEN
    robot.hear /(?:(?:fog)?bugz?|case) (\d+)/, (msg) ->
      msg.http("https://#{env.HUBOT_FOGBUGZ_HOST}/api.asp")
        .query
          cmd: "search"
          token: env.HUBOT_FOGBUGZ_TOKEN
          q: msg.match[1]
          cols: "ixBug,sTitle,sStatus,sProject,sArea,sPersonAssignedTo,ixPriority,sPriority,sLatestTextSummary"
        .post() (err, res, body) ->
          (new Parser()).parseString body, (err,json) ->
            truncate = (text,length=60,suffix="...") ->
              if text.length > length then (text.substr(0,length-suffix.length) + suffix) else text
            bug = json.cases?.case
            if bug
              msg.send "https://#{env.HUBOT_FOGBUGZ_HOST}/?#{bug.ixBug}"
              details = [
                "FogBugz #{bug.ixBug}: #{bug.sTitle}"
                "  Priority: #{bug.ixPriority} - #{bug.sPriority}"
                "  Project: #{bug.sProject} (#{bug.sArea})"
                "  Status: #{bug.sStatus}"
                "  Assigned To: #{bug.sPersonAssignedTo}"
                "  Latest Comment: #{truncate bug.sLatestTextSummary}"
              ]
              msg.send details.join("\n")
