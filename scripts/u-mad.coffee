# No Fucks Given
#
# no fuck - display a not a fuck was given meme
#

no_fucks = [
  "http://hubot-assets.s3.amazonaws.com/u-mad/1.jpg",
"http://hubot-assets.s3.amazonaws.com/u-mad/2.jpg",
"http://hubot-assets.s3.amazonaws.com/u-mad/3.jpg",
"http://hubot-assets.s3.amazonaws.com/u-mad/4.jpg",
"http://hubot-assets.s3.amazonaws.com/u-mad/5.jpg",
"http://hubot-assets.s3.amazonaws.com/u-mad/6.jpg",
"http://hubot-assets.s3.amazonaws.com/u-mad/7.jpg",
"http://hubot-assets.s3.amazonaws.com/u-mad/8.jpg",
"http://hubot-assets.s3.amazonaws.com/u-mad/9.jpg",
"http://hubot-assets.s3.amazonaws.com/u-mad/10.jpg",
"http://hubot-assets.s3.amazonaws.com/u-mad/11.png",

]

module.exports = (robot) ->
  robot.hear /.*(u mad).*/i, (msg) ->
    msg.send msg.random no_fucks
