# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "https://s3.amazonaws.com/hubot-assets/why/1.jpg",
  "https://s3.amazonaws.com/hubot-assets/why/2.jpg",
  "https://s3.amazonaws.com/hubot-assets/why/3.jpg",
  "https://s3.amazonaws.com/hubot-assets/why/4.jpg",
  "https://s3.amazonaws.com/hubot-assets/why/5.jpg",
  "https://s3.amazonaws.com/hubot-assets/why/6.jpg",
  "https://s3.amazonaws.com/hubot-assets/why/7.jpg",
  "https://s3.amazonaws.com/hubot-assets/why/8.jpg",
  "https://s3.amazonaws.com/hubot-assets/why/9.gif",
  "https://s3.amazonaws.com/hubot-assets/why/10.gif",
  "https://s3.amazonaws.com/hubot-assets/why/11.gif",
  "https://s3.amazonaws.com/hubot-assets/why/12.jpg",

]

module.exports = (robot) ->
  robot.respond /.*(why|processmaker).*/i, (msg) ->
    msg.send msg.random no_fucks
