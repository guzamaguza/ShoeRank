class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :q_num
      t.string :content
      t.string :answer
      t.string :correct_answer
      t.datetime :datetime_qstart
      t.datetime :datetime_required
      t.datetime :datetime_submitted
      t.string :accepted
      t.string :result

      t.belongs_to :game, foreign_key: true, class_name: "Game", optional: true
      t.timestamps
    end
  end
end
