# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Theresa = Friend.create(name: 'Tbone')
Theresa.wish = Wish.create(nickname: 'B\'Gosh', favmem: 'Exchanging silly stories @Shangrila rooftop for Pizzle\'s bday', thought: 'Cannot. stop. laughing... going to be friends with this guy for a long time.', first: 'More Josh Days', second: 'Lots of completed goals', third: '#bombnoms', omen: 'heartburn', salutation: 'from the other end of the 405', relationship: 'BPF', ps: 'As one of your elders, my advice: keep doing what you are doing.  You are always motivating others to do better, super helpful, and a boatload of fun.  We all benefit from you being you.')
