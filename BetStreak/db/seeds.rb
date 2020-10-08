# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Contest.delete_all
  Game.delete_all
  Question.delete_all

  @contest_data_1 = [ title: 'Braves V. Phillies (Single Match, MLB)', stakes: 'high',  status: '' ]
  @contest_1 = Contest.create!(@contest_data_1)

  @contest_data_2 = [ title: 'Braves V. Phillies (Single Match, MLB)', stakes: 'med',  status: '' ]
  @contest_2 = Contest.create!(@contest_data_2)

  @contest_data_3 = [ title: 'Braves V. Phillies (Single Match, MLB)', stakes: 'low',  status: '' ]
  @contest_3 = Contest.create!(@contest_data_3)

  @game_data_1 = [ title: 'MLB: Atlanta Braves V. Philadelphia Phillies', datetime_of_start: '2021-08-30 16:00:00 UTC',  datetime_of_end: '' ,  location: 'Philadelphia, Pennsylvania' ,  timezone: 'EST' , match_status: 'Upcoming' ]
  @game_1 = Game.create!(@game_data_1)

  @questions_data_1 = [

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '1',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      datetime_required: '',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '2',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      datetime_required: '',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '3',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      datetime_required: '',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '4',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      datetime_required: '',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '5',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      datetime_required: '',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '6',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      datetime_required: '',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '7',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      datetime_required: '',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '8',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      datetime_required: '',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '9',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      datetime_required: '',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ]

  ]

  @questions_data_1.each do |ques|
    Question.create!(ques)
  end

=begin
def main
  #make_games
  make_questions
  #make_admin
  #make_attractions_and_rides
end


def make_games
  Game.create!(@games_data_1)
end

def make_questions
  @questions_data_1.each do |ques|
    Question.create!(ques)
  end
end

main
=end
