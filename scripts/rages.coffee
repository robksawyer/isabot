# Description:
#   Rage faces! Partay! See them at http://alltheragefaces.com.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot rage:pokerface - Responds with a poker face.
#   hubot rage:gasp - Responds with a gasp face.
#   hubot rage:troll - Responds with a troll face.
#   hubot rage:notbad - Responds with a notbad face.
#   hubot rage:lol - Responds with a lol face.
#   hubot rage:megusta - Responds with a megusta face.
#   hubot rage:fthat - Responds with a fthat face.
#   hubot rage:mega - Responds with a mega face.
#   hubot rage:jackiechan - Responds with a jackiechan face.
#   hubot rage:herpderp - Responds with a herpderp face.
#   hubot rage:badpokerface - Responds with a badpokerface face.
#   hubot rage:challengeaccepted - Responds with a challengeaccepted face.
#   hubot rage:victory - Responds with a victory face.
#   hubot rage:awwyeah - Responds with a awwyeah face.
#   hubot rage:yuno - Responds with a yuno face.
#   hubot rage:gtfo - Responds with a gtfo face.
#   hubot rage:okay - Responds with a okay face.
#   hubot rage:no - Responds with a no face.
#   hubot rage:truestory - Responds with a truestory face.
#   hubot rage:cereal - Responds with a cereal face.
#   hubot rage:seriously - Responds with a seriously face.
#   hubot rage:foreveralone - Responds with a foreveralone face.
#   hubot rage:thumbsup - Responds with a thumbsup face.
#   hubot rage:hmm - Responds with a hmm face.
#   hubot rage:bro - Responds with a bro face.
#   hubot rage:thumbsup - Responds with a thumbsup face.
#   hubot rage:spiderman - Responds with a spiderman face.
#   hubot rage:deskflip - Responds with a deskflip face.
#
# Author:
#   unknown
#

module.exports = (robot) ->
  robot.respond /(rage)?:?\s?pokerface/i, (msg) ->
    msg.send "http://fuuu.us/268.png"
  robot.respond /(rage)?:?\s?gasp/i, (msg) ->
    msg.send "http://fuuu.us/257.png"
  robot.respond /(rage)?:?\s?troll/i, (msg) ->
    msg.send "http://fuuu.us/86.png"
  robot.respond /(rage)?:?\s?lol/i, (msg) ->
    msg.send "http://fuuu.us/176.png"
  robot.respond /(rage)?:?\s?notbad/i, (msg) ->
    msg.send "http://fuuu.us/172.png"
  robot.respond /(rage)?:?\s?mega(rage)?/i, (msg) ->
    msg.send "http://fuuu.us/50.png"
  robot.respond /(rage)?:?\s?fthat/i, (msg) ->
    msg.send "http://fuuu.us/171.png"
  robot.respond /(rage)?:?\s?megusta/i, (msg) ->
    msg.send "http://fuuu.us/35.png"
  robot.respond /(rage)?:?\s?jackiechan/i, (msg) ->
    msg.send "http://fuuu.us/179.png"
  robot.respond /(rage)?:?\s?badpokerface/i, (msg) ->
    msg.send "http://fuuu.us/185.png"
  robot.respond /(rage)?:?\s?herpderp/i, (msg) ->
    msg.send "http://fuuu.us/40.png"
  robot.respond /(rage)?:?\s?challengeaccepted/i, (msg) ->
    msg.send "http://fuuu.us/148.png"
  robot.respond /(rage)?:?\s?victory/i, (msg) ->
    msg.send "http://fuuu.us/188.png"
  robot.respond /(rage)?:?\s?awwyeah/i, (msg) ->
    msg.send "http://fuuu.us/21.png"
  robot.respond /(rage)?:?\s?yuno/i, (msg) ->
    msg.send "http://fuuu.us/137.png"
  robot.respond /(rage)?:?\s?gtfo/i, (msg) ->
    msg.send "http://fuuu.us/114.png"
  robot.respond /(rage)?:?\s?okay/i, (msg) ->
    msg.send "http://fuuu.us/166.png"
  robot.respond /(rage)?:?\s?no$/i, (msg) ->
    msg.send "http://fuuu.us/132.png"
  robot.respond /(rage)?:?\s?truestory/i, (msg) ->
    msg.send "http://fuuu.us/187.png"
  robot.respond /(rage)?:?\s?seriously/i, (msg) ->
    msg.send "http://fuuu.us/42.png"
  robot.respond /(rage)?:?\s?cereal/i, (msg) ->
    msg.send "http://fuuu.us/142.png"
  robot.respond /(rage)?:?\s?hmm/i, (msg) ->
    msg.send "http://fuuu.us/152.png"
  robot.respond /(rage)?:?\s?foreveralone/i, (msg) ->
    msg.send "http://fuuu.us/112.png"
  robot.respond /(rage)?:?\s?thumbsup/i, (msg) ->
    msg.send "http://fuuu.us/30.png"
  robot.respond /(rage)?:?\s?bro/i, (msg) ->
    msg.send "http://fuuu.us/73.png"
  robot.respond /(rage)?:?\s?spiderman/i, (msg) ->
    msg.send "http://fuuu.us/236.png"
  robot.respond /(rage)?:?\s?deskflip/i, (msg) ->
    msg.send "http://fuuu.us/217.png"