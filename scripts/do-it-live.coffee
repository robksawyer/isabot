# Description:
#   Fuck it, we'll do it live!
#   
# Dependencies:
#   None 
#   
# Configuration:
#   None
#   
# Commands:
#   do it live - Returns a random meme regarding the statements of TV host Bill O'Reilly.
#
# Author:
#   unknown
#
module.exports = (robot) ->

  options = [
    "https://www.youtube.com/watch?v=eUFY8Zw0Bag",
    "http://rationalmale.files.wordpress.com/2011/09/doitlive.jpeg",
    "http://www.quickmeme.com/img/9d/9daf428b4fcdc94c27fae2bd28107198595f299cdf03cff8fcd124832d57322b.jpg",
    "http://treasure.diylol.com/uploads/post/image/820948/resized_picard-wtf-meme-generator-we-ll-do-it-live-i-ll-write-it-and-we-ll-do-it-live-0b7916.jpg",
    "http://www.quickmeme.com/img/3d/3d45c2ffd175c5879bfe1da6f0f5bfb98a9079e752736f70500093ebf67540a7.jpg",
    "http://treasure.diylol.com/uploads/post/image/821435/thumb_picard-wtf-meme-generator-we-ll-do-it-live-fuck-it-3bbda9.jpg"
  ]

  robot.hear /do it live/i, (msg) ->
    msg.random options
