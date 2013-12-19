# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Friend.destroy_all
Wish.destroy_all
Theresa = Friend.create(name: 'Tbone')
Theresa.wish = Wish.create(nickname: 'B\'Gosh', favmem: 'exchanging silly stories @Shangrila rooftop for Pizzle\'s bday', thought: 'cannot. stop. laughing... going to be friends with this guy for a long time.', first: 'more self-declared Josh Days', second: 'lots of completed goals', third: '#bombnoms', omen: 'heartburn', salutation: 'from the other end of the 405', relationship: 'BPF', wisher: 'tbone', ps: 'As one of your elders, my advice: keep doing what you are doing.  You are always motivating others to do better, super helpful, and a boatload of fun.  We all benefit from you being you.')
