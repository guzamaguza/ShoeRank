class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :q_num
      t.string :content
      t.string :answer
      t.datetime :datetime_required
      t.datetime :datetime_submitted
      t.string :accepted
      t.string :result

      t.belongs_to :reg, foreign_key: true
      t.timestamps
    end
  end
end
