class CreateChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :choices do |t|
      t.text :choice_a, null: false, length: {maximum: 20}
      t.text :choice_b, null: false, length: {maximum: 20}
      t.text :answer, null: false
      t.integer :user_id

      t.timestamps
    end
  end
end
