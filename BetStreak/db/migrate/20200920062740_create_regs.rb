class CreateRegs < ActiveRecord::Migration[5.2]
  def change
    create_table :regs do |t|
      t.string :user_id
      t.string :game_id
      t.string :datetime_registered
      t.string :approved
      t.string :w_or_l

      t.timestamps
    end
  end
end
