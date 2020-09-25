# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


DATA = {

  :games => [
    [{ title: 'MLB: Atlanta Braves V. Philadelphia Phillies' }, { datetime_of_start: '2021-08-30 16:00:00 UTC' }, { datetime_of_end: '' }, { location: 'Philadelphia, Pennsylvania' }, { timezone: 'EST' },{ match_status: 'Upcoming' }]
  ],

  :questions => [

    [ { reg_id: '' },
      { q_num: '1' },
      { content: 'Will either team score this inning? Yes/No' },
      { answer: '' },
      { datetime_required: '' },
      { datetime_submitted: '' },
      { accepted: '' },
      { result: '' }
    ],

    [ { reg_id: '' },
      { q_num: '2' },
      { content: 'Will there be a home run this inning? Yes/No' },
      { answer: '' },
      { datetime_required: '' },
      { datetime_submitted: '' },
      { accepted: '' },
      { result: '' }
    ],

    [ { reg_id: '' },
      { q_num: '3' },
      { content: 'Which pitcher will have more strikeouts this inning? Yes/No' },
      { answer: '' },
      { datetime_required: '' },
      { datetime_submitted: '' },
      { accepted: '' },
      { result: '' }
    ],

    [ { reg_id: '' },
      { q_num: '4' },
      { content: 'How many extra base hits (2b, 3b, hr) will occur this inning? Over/Under 1.5' },
      { answer: '' },
      { datetime_required: '' },
      { datetime_submitted: '' },
      { accepted: '' },
      { result: '' }
    ],

    [ { reg_id: '' },
      { q_num: '5' },
      { content: 'Will there be a pitching change this inning? Yes/No' },
      { answer: '' },
      { datetime_required: '' },
      { datetime_submitted: '' },
      { accepted: '' },
      { result: '' }
    ],

    [ { reg_id: '' },
      { q_num: '6' },
      { content: 'Will there be a lead change this inning? Yes/No' },
      { answer: '' },
      { datetime_required: '' },
      { datetime_submitted: '' },
      { accepted: '' },
      { result: '' }
    ],

    [ { reg_id: '' },
      { q_num: '7' },
      { content: 'Will a double play occur this inning? Yes/No' },
      { answer: '' },
      { datetime_required: '' },
      { datetime_submitted: '' },
      { accepted: '' },
      { result: '' }
    ],

    [ { reg_id: '' },
      { q_num: '8' },
      { content: 'How many walks will be issued this inning? Over/Under 1.5' },
      { answer: '' },
      { datetime_required: '' },
      { datetime_submitted: '' },
      { accepted: '' },
      { result: '' }
    ],

    [ { reg_id: '' },
      { q_num: '9' },
      { content: 'Will either side of this inning be a 1-2-3 inning? Yes/No' },
      { answer: '' },
      { datetime_required: '' },
      { datetime_submitted: '' },
      { accepted: '' },
      { result: '' }
    ]

  ]

}

def main
  make_games
  make_questions
  #make_admin
  #make_attractions_and_rides
end

def make_games
  DATA[:games].each do |game|
    Game.create(game)
  end
end

def make_questions
  DATA[:questions].each do |ques|
    Question.create(ques)
  end
end

main
