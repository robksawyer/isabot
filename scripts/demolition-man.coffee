# Description:
#   Watch your language!
#   
# Dependencies:
#   None 
#   
# Configuration:
#   None
#    
# Commands:
#   wank - Scolds a user for using the word 
#
# Author:
#   unknown
#
module.exports = (robot) ->

  words = [
    'wank'
  ]
  regex = new RegExp('(?:^|\\s)(' + words.join('|') + ')(?:\\s|\\.|\\?|!|$)', 'i');

  robot.hear regex, (msg) ->
    msg.send 'You have been fined one credit for a violation of the verbal morality statute.'
