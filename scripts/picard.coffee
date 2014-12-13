# Description:
#   Shows an image of Picard when some phrases that he says are spoken.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   [make it so|boldly go] - Responds with an image of Picard.
#
# Author:
#   unknown
#

picards = [
  "http://i0.wp.com/superficialgallery.com/wp-content/uploads/Picard-Slow-Clap.gif?resize=640%2C484",
  "http://i.imgur.com/NsWYM6I.gif",
  "http://nercupofcoffeeandbook.files.wordpress.com/2014/09/jeanlucpicard.gif",
  "http://media.tumblr.com/37579093b57e769ef1a3e58c299600ad/tumblr_inline_n4edjqIgaC1qzpq7e.gif",
  "http://i.minus.com/ibnV8Ba3lVxPm0.gif",
  "http://media.giphy.com/media/3yxADC4jE5W4E/giphy.gif",
  "http://i.imgur.com/hFolr0i.gif",
  "http://ssglim.files.wordpress.com/2009/06/picard.gif?w=460"
]

module.exports = (robot) ->
  robot.hear /.*(make it so|boldly go).*/i, (msg) ->
    msg.send msg.random picards
