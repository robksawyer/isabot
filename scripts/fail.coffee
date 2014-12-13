# Description:
#   Displays a major FAIL meme.
#   
# Dependencies:
#   None 
#   
# Configuration:
#   None
#   
# Commands:
#   fail - Responds with an animated gif that elaborates
#
# Author:
#   unknown
#

no_fucks = [
  "https://31.media.tumblr.com/df44b0ecb6a2000aedf24c16e055db43/tumblr_nabfrkjcRM1txlxx3o1_500.gif",
  "http://www.comedytime.tv/blog/wp-content/uploads/2012/04/7.gif",
  "http://extreme.com/media/blog/images/fail%20gif%204.gif",
  "http://37.media.tumblr.com/b5db480daa1c5cf021320cf88ed37e5d/tumblr_mhg4c3hHP71riuhqgo1_400.gif",
  "http://ao-upload-prod.s3.amazonaws.com/wp-content/uploads/2013/12/1302863833_dancing-by-the-pool-fail.gif",
  "http://www.gifsforum.com/images/gif/fail/grand/fail-eccbc87e4b5ce2fe28308fd9f2a7baf3-2602.gif",
  "http://cdn.list25.com/wp-content/uploads/2011/11/penguifall.gif",
  "http://www.pbh2.com/wordpress/wp-content/uploads/2013/10/fail.gif",
  "http://www.pbh2.com/wordpress/wp-content/uploads/2013/10/fail-gif-shopping-cart.gif",
  "http://img1.wikia.nocookie.net/__cb20081112004915/pikmin/images/e/e6/Fail.gif",
  "http://www.rantlifestyle.com/wp-content/uploads/2014/06/6a0120a95a88d5970b019b01413776970c-800wi.gif",
  "http://img.pandawhale.com/post-24051-slow-mo-slam-dunk-fail-gif-pJyz.gif",
  "http://86failavenue.com/images/fail-gif-watermelon-face.gif",
  "http://cdn3.list25.com/wp-content/uploads/2011/11/muggingfail.gif",
  "http://cdn3.list25.com/wp-content/uploads/2011/11/handshake.gif",
  "http://cdn.list25.com/wp-content/uploads/2011/11/dogfail.gif",
  "http://cdn3.list25.com/wp-content/uploads/2011/11/logicfail1.gif",
  "http://cdn3.list25.com/wp-content/uploads/2011/11/locker.gif",
  "http://cdn.list25.com/wp-content/uploads/2011/11/firstaid.gif",
  "http://cdn4.list25.com/wp-content/uploads/2011/11/feedingfail.gif",
  "http://cdn.list25.com/wp-content/uploads/2011/11/door.gif",
  "http://cdn4.list25.com/wp-content/uploads/2011/11/polevault.gif",
  "http://cdn.list25.com/wp-content/uploads/2011/11/stairs.gif",
  "http://cdn2.list25.com/wp-content/uploads/2011/11/treadmill.gif",
  "http://cdn3.list25.com/wp-content/uploads/2011/11/aheadbutt.gif",
  "http://cdn4.list25.com/wp-content/uploads/2011/11/supermodel.gif",
  "http://cdn.list25.com/wp-content/uploads/2011/11/defense.gif",
  "http://cdn.list25.com/wp-content/uploads/2011/11/skating.gif",
  "http://cdn3.list25.com/wp-content/uploads/2011/11/police.gif",
  "http://cdn3.list25.com/wp-content/uploads/2011/11/invisiblewall.gif",
  "http://cdn4.list25.com/wp-content/uploads/2011/11/double.gif",
  "http://cdn4.list25.com/wp-content/uploads/2011/11/signpunch.gif",
  "http://cdn4.list25.com/wp-content/uploads/2011/11/chairstunt.gif",
  "http://cdn2.list25.com/wp-content/uploads/2011/11/head-over-heals.gif",
  "http://cdn.list25.com/wp-content/uploads/2011/11/car.gif",
  "http://cdn2.list25.com/wp-content/uploads/2011/11/pedestrian.gif"
]

module.exports = (robot) ->
  robot.respond /.*(fail).*/i, (msg) ->
    msg.send msg.random no_fucks
