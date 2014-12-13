# Description:
#   Because smoking can be funny sometimes.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   [smoke|cig|vape|vaping|vaper] - Responds with a related meme, gif or image.
#
# Author:
#   unknown
#

smokes = [
  "http://i.minus.com/irxvkFmRmWCr3.gif",
  "https://33.media.tumblr.com/tumblr_m0cgv1R9Od1qfdu94o1_500.gif",
  "http://oi44.tinypic.com/rb9pxj.jpg",
  "http://25.media.tumblr.com/073a59b086e8b39b9d475d831c3c3037/tumblr_mh5yawOHo61rfd0m0o1_500.gif",
  "http://i.imgur.com/d2S9A.gif",
  "http://i.imgur.com/mZtziVr.gif",
  "http://i.perezhilton.com/wp-content/uploads/2014/04/e-cig-ban-starts-tonight-at-midnight.gif",
  "https://media.giphy.com/media/20ZFeekfFUrni/giphy.gif",
  "http://www.shockmansion.com/wp-content/myimages/2013/08/2.gif",
  "http://1.bp.blogspot.com/-yiUgedxW1i8/U_uKWhAKZpI/AAAAAAAAB0I/10iZdWILxBE/s1600/http---makeagif.com--media-8-25-2014-oKkFxw%2B(1).gif",
  "http://33.media.tumblr.com/tumblr_llarifRCJE1qc63sno1_500.gif",
  "http://media.tumblr.com/tumblr_m9jqzjSJUz1rrdwdy.gif",
  "http://oi40.tinypic.com/w18tno.jpg",
  "http://uproxx.files.wordpress.com/2012/08/sideshowbobtheater.gif"
]

module.exports = (robot) ->
  robot.hear /.*(smoke|cig|vape|vaping|vaper).*/i, (msg) ->
    msg.send msg.random smokes
