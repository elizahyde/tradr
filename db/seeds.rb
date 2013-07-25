# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



user_list = [
  [ "bob@email.com", "password", "password" ],
  [ "john@email.com", "password", "password" ],
  [ "mary@email.com", "password", "password" ],
  [ "carla@email.com", "password", "password" ],
  [ "jane@email.com", "password", "password" ],
  [ "tom@email.com", "password", "password" ],
  [ "sally@email.com", "password", "password" ],
  [ "janet@email.com", "password", "password" ],
  [ "lara@email.com", "password", "password" ],
  [ "moby@email.com", "password", "password" ]

]

user_list.each do |email, password, password_confirmation, cash|
  User.create( email: email, password: password, password_confirmation: password_confirmation, cash: 5000000)

end


stocks = ["abr", "bkr", "bx", "ckec", "clct", "clgx", "cmg", "cnqr", "epl",
  "exam", "ffkt", "fly", "gci", "gff", "hy", "igte", "ihc", "intt", "jmp", "kopn", "lmos", "lts", "mei", "meli", "myrg", "ngs", "nm",
  "pcln", "penx", "phh", "snv", "spnc", "stc", "tayc", "thrm", "vvi", "aeti", "afsi", "ai", "atvi", "bbby", "bhe", "c", "cmn", "cvco", "dgas", "egbn", "eqm", "fhn", "frbk"]


@stocks = Ystock::Google.find(stocks)

user_ids = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]

@stocks.each do |stock, value|

    Stock.create(
      :symbol => stock,
      :starting_price => value[:price],
      :quantity => 100,
      :user_id => user_ids.sample)

end
