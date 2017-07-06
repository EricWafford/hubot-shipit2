# Description:
#   Rodent Motivation
#
#   Set the environment variable HUBOT_SHIP_EXTRA_SQUIRRELS (to anything)
#   for additional motivation
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_SHIP_EXTRA_SQUIRRELS
#
# Commands:
#   ship it - Display a motivation squirrel
#
# Author:
#   maddox

squirrels = [
  "https://shipitsquirrel.github.io/images/ship%20it%20squirrel.png",
  "https://media.tumblr.com/tumblr_lybw63nzPp1r5bvcto1_500.jpg",
  "https://i.imgur.com/DPVM1.png",
  "https://d2f8dzk2mhcqts.cloudfront.net/0772_PEW_Roundup/09_Squirrel.jpg",
  "https://www.cybersalt.org/images/funnypictures/s/supersquirrel.jpg",
  "https://www.zmescience.com/wp-content/uploads/2010/09/squirrel.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/sniper-squirrel.jpg",
  "https://1.bp.blogspot.com/_v0neUj-VDa4/TFBEbqFQcII/AAAAAAAAFBU/E8kPNmF1h1E/s640/squirrelbacca-thumb.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/soldier-squirrel.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/squirrelmobster.jpeg",
]

module.exports = (robot) ->

  # Enable a looser regex if environment variable is set
  if process.env.HUBOT_SHIP_EXTRA_SQUIRRELS
    regex = /\bship(ping|z|s|ped)?\s*it\b/i
  else
    regex = /\bship\s*it\b/i

  robot.hear regex, (msg) ->
    msg.send msg.random squirrels
