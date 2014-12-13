# Description:
#   Sends over some coffee.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot command <some action or text> - What did this command do?
#
# Author:
#   unknown
#
module.exports = (robot) ->

  coffee = [
    "http://images.sodahead.com/polls/004006035/571934460_w_Giant_Coffee_Cup75917_xlarge.jpeg",
    "http://threes.com/cms/images/stories/food/coffee_morning.jpg",
    "http://splendids.com/images/products/large/18221.jpg",
    "http://www.asianfoodgrocer.com/img/prods/beverage-other/1490407-thai-coffee-can-10oz-lg.jpg",
    "http://www.asianfoodgrocer.com/img/prods/organic-products/11831-organic-coffee-soymilk-lg.jpg",
    "http://www.eliteformsinc.com/Assets/ScrollerGalleryImages/Beverage_Supplies/coffee_airpot.JPG",
    "http://mcdn.coffeeforless.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/images/coffeepods/folgers-coffee-classic-roast-ground-coffee-42-1-5oz-bags.jpg",
    "http://2.bp.blogspot.com/_fiu4rzRr6LA/TCtYI1I5_CI/AAAAAAAAAA0/03Csj34nrZc/s1600/caramel_caffe_latte_lg.jpg",
    "http://images.sodahead.com/polls/003330783/5236426377_starbucks_grande_iced_caffe_latte_ghk0810_xl_2994778_answer_4_xlarge.jpeg",
    "https://c1.staticflickr.com/7/6086/6120696125_6313f28855_z.jpg",
    "http://theshot.coffeeratings.com/wp-content/11-2h/stumptownDowntown_3050.jpg",
    "https://greenegrape.files.wordpress.com/2010/10/stumptowncoffee.jpg",
    "http://www.ritzbites.com/blog/images/2007/08/20/intell_3.jpg",
    "https://thirtydaysofnew.files.wordpress.com/2014/05/20140503-234828.jpg",
    "http://s3-media1.fl.yelpcdn.com/bphoto/15IrkZQci2aJkZcaJlrGSA/l.jpg",
    "http://www.royalbaconsociety.com/wp-content/uploads/2014/08/Our-Name-Is-Mud-16-Ounce-I-Heart-Bacon-Mug-by-Lorrie-Veasey-45-Inch-0-400x400.jpg",
    "http://www.royalbaconsociety.com/wp-content/uploads/2014/11/CafePress-Dont-go-bacon-my-heart-Mugs-Large-Mug-Standard-Multi-color-0-400x400.jpg",
    "http://2.bp.blogspot.com/_vhJw7qcudXk/S-Ro6NZnf7I/AAAAAAAAFWQ/-yAYlJGDmr4/s1600/vacuum-coffee-maker.jpg"
  ]

  robot.hear /.*(coffee).*/i, (msg) ->
    msg.send msg.random coffee