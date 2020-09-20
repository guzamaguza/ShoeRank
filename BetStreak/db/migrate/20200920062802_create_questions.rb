class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :reg_id
      t.string :question_id
      t.string :answer_id
      t.string :content
      t.string :datetime_required

      t.timestamps
    end
  end
end
