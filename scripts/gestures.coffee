# Description:
#   This script adds some gestures to hubot.
#
# Dependencies:
#   None
#
# Commands:
#   hubot bow to <user> - Bows to a user
#   hubot wave at <user> - Waves to a user
#
# Author:
#   fteem

module.exports = (robot) ->
  robot.respond /bow to\s(.+)/i, (msg) ->
    input = msg.match[1]
    sender = msg.message.user.name
    if input.toLowerCase() == "me"
      msg.send "/me bows to #{sender}."
    else
      msg.send "/me bows to #{input}."

  robot.respond /wave at\s(.+)/i, (msg) ->
    input = msg.match[1]
    sender = msg.message.user.name
    if input.toLowerCase() == "me"
      msg.send "/me waves at #{sender}"
    else
      msg.send "/me waves at #{input}"
