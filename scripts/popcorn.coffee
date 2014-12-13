# Description:
#   Grabs some popcorn and just chills.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   [popcorn|grabs popcorn|get popcorn] - Responds with a popcorn meme.
#
# Author:
#   unknown
#

popcorn = [
  "http://weknowgifs.com/wp-content/uploads/2013/03/stephen-colbert-popcorn-gif1.gif",
  "http://weknowgifs.com/wp-content/uploads/2013/03/snl-popcorn-gif.gif",
  "http://weknowgifs.com/wp-content/uploads/2013/03/psyche-eating-popcorn-gif.gif",
  "http://www.myfacewhen.net/uploads/6421-michael-jackson-eating-popcorn.gif",
  "http://i898.photobucket.com/albums/ac183/gumbynotpokey/popcorn_zpsb03273f2.jpg",
  "http://i.imgur.com/3rj18Rv.gif",
  "http://static.giantbomb.com/uploads/original/11/116066/2283684-Jimmy_bieber_Popcorn_cu-thumb-350x197-14878.gif",
  "http://i.imgur.com/sOksm.gif",
  "http://i3.kym-cdn.com/photos/images/original/000/294/880/851.gif",
  "http://www.reactiongifs.us/wp-content/uploads/2013/05/popcorn_danny_devito.gif"
]

module.exports = (robot) ->
  robot.hear /.*(popcorn|grabs popcorn|get popcorn).*/i, (msg) ->
    msg.send msg.random popcorn
