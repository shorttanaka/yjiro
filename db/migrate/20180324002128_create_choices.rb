class CreateChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :choices do |t|
      t.text :choice_a
      t.text :choice_b
      t.integer :answer
      t.integer :user_id

      t.timestamps
    end
  end
end
