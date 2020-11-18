# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
  Contest.delete_all
  Game.delete_all
  Question.delete_all


  @contest_data_1 = [stakes: 'high',  status: '' ]
  @contest_1 = Contest.create!(@contest_data_1)

  @contest_data_2 = [stakes: 'med',  status: '' ]
  @contest_2 = Contest.create!(@contest_data_2)

  @contest_data_3 = [stakes: 'low',  status: '' ]
  @contest_3 = Contest.create!(@contest_data_3)

  @game_data_1 = [ title: 'MLB: Atlanta Braves V. Philadelphia Phillies', datetime_of_start: '2021-05-01 16:00:00 UTC',  datetime_of_end: '' ,  location: 'Philadelphia, Pennsylvania' ,  timezone: 'EST' , match_status: 'Upcoming' ]
  @game_1 = Game.create!(@game_data_1)

  @questions_data_1 = [

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '1',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      correct_answer: '',
      datetime_qstart: '2020-11-02 3:00:00 UTC',
      datetime_required: '2020-11-02 3:02:00 UTC',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '2',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      correct_answer: '',
      datetime_qstart: '2020-11-02 3:20:00 UTC',
      datetime_required: '2020-11-02 3:22:00 UTC',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '3',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      correct_answer: '',
      datetime_qstart: '2020-11-01 18:40:00 UTC',
      datetime_required: '2020-11-01 18:42:00 UTC',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '4',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      correct_answer: '',
      datetime_qstart: '2020-11-01 19:00:00 UTC',
      datetime_required: '2020-11-01 19:02:00 UTC',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '5',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      correct_answer: '',
      datetime_qstart: '2020-11-01 19:20:00 UTC',
      datetime_required: '2020-11-01 19:22:00 UTC',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '6',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      correct_answer: '',
      datetime_qstart: '2020-11-01 19:40:00 UTC',
      datetime_required: '2020-11-01 19:42:00 UTC',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '7',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      correct_answer: '',
      datetime_qstart: '2020-11-01 20:00:00 UTC',
      datetime_required: '2020-11-01 20:02:00 UTC',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '8',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      correct_answer: '',
      datetime_qstart: '2020-11-01 20:20:00 UTC',
      datetime_required: '2020-11-01 20:22:00 UTC',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ],

    [ game_id: Game.find_by(title: "MLB: Atlanta Braves V. Philadelphia Phillies").id,
      q_num: '9',
      content: 'Will either team score this inning? Yes/No',
      answer: '',
      correct_answer: '',
      datetime_qstart: '2020-11-01 20:40:00 UTC',
      datetime_required: '2020-11-01 20:42:00 UTC',
      datetime_submitted: '',
      accepted: '',
      result: ''
    ]

  ]

  @questions_data_1.each do |ques|
    Question.create!(ques)
  end
=end 
