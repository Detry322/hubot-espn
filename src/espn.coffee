# Description:
#   Get live sports data for MLB, NHL, NBA, NFL, and WNBA
#
# Configuration:
#   None
#
# Commands:
#   hubot espn <mlb, nfl, etc.> - get real-time scores for the relevant league
#
# Author:
#   Detry322

querystring = require 'querystring'

format_response = (league, response) ->
  data = querystring.parse(response)
  count = +data["#{league}_s_count"]
  if count is 0
    return "No scores to display for #{league.toUpperCase()}"
  result_string = "Scores:\n"
  for i in [1..count] by 1
    key = "#{league}_s_left#{i}"
    result_string += "- #{data[key]}\n"
  return result_string

module.exports = (robot) ->

  robot.respond /espn (mlb|nhl|nba|wnba|nfl)$/i, (res) ->
    league = res.match[1].toLowerCase()
    robot.http("http://espn.go.com/#{league}/bottomline/scores").get() (err, result, body) ->
      if err or result.statusCode isnt 200
        res.send "There was a problem fetching score data :("
        return
      res.send format_response(league, body)
