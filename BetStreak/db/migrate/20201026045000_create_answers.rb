class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :correct_answer
      t.belongs_to :question, foreign_key: true, class_name: "Question", optional: true

      t.timestamps
    end
  end
end
