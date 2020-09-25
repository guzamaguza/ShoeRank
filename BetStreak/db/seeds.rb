# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


DATA = {
  :games => [
    [
      :title => "MLB: Atlanta Braves V. Philadelphia Phillies",
      :datetime_of_start => "2021-08-30 16:00:00 UTC",
      :datetime_of_end => "",
      :location => "Philadelphia, Pennsylvania",
      :timezone => "EST",
      :match_status => "Upcoming"
    ]
  ]

}

def main
  make_games
  #make_admin
  #make_attractions_and_rides
end

def make_games
  DATA[:games].each do |game|
    new_game = Game.new
    game.each_with_index do |key, value|
      new_game[key] = value
    end

    new_game.save
  end
end

=begin
def make_admin
  DATA[:admins].each do |name|
    User.create(name: name, admin: true, password: 'password')
  end
end

def make_games
  DATA[:games].each do |game|
    new_game = Game.new
    game.each_with_index do |attribute, i|
      new_game.send(DATA[:game_keys][i]+"=", attribute)
    end
    new_game.save
  end
end

=end

main
