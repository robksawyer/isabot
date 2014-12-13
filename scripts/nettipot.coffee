# Description:
#   Nasal irrigation or nasal lavage or nasal douche is the personal hygiene practice in which the nasal 
#   cavity is washed to flush out excess mucus and debris from the nose and sinuses. 
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot nettipot - Send scarring, horrifying image of a nettipot in use.
#   hubot nettibomb - Send a nettipot bomb
#
# Author:
#   @alexpgates
#
nettipot = "http://i.imgur.com/EIqdZ.gif"

module.exports = (robot) ->
  robot.respond /nettipot/i, (msg) ->
	    msg.send nettipot

  robot.respond /nettibomb/i, (msg) ->
	    msg.send nettipot
	    msg.send nettipot
	    msg.send nettipot
	    msg.send nettipot
	    msg.send nettipot

