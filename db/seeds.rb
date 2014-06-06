# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

videos = Video.create [
  {name: 'Ruby variables'},
  {name: 'Ruby operators'},
  {name: 'Ruby methods'},
  {name: 'Ruby classes'},
]

badges = Badge.create [
  {name: 'Half-Way', fa_symbol: 'bookmark-o'},
  {name: 'All-Way', fa_symbol: 'bookmark'},
  {name: 'SpeedRun', fa_symbol: 'bolt'},
]

compagnies = Compagny.create [
  {name: 'Vodeclic'},
  {name: 'thoughtbot'},
  {name: 'Basecamp'},
]

users = User.create [
  {name: 'Thomas', compagny: compagnies.first, videos: videos, badges: badges[0..1]},
  {name: 'Guillaume', compagny: compagnies.first, videos: videos[0..1], badges: [badges.first]},
  {name: 'David Heinemeier Hansson', compagny: compagnies.second},
  {name: 'Joe Ferris', compagny: compagnies.third, videos: [videos.fourth], badges: [badges.third]},
]
