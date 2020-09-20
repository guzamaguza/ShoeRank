class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :reg_id
      t.string :answer_id
      t.string :question_id
      t.string :response
      t.string :datetime_submitted
      t.string :accepted
      t.string :result

      t.timestamps
    end
  end
end
