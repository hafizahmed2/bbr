class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :user_name, null: false
      t.string :user_email, null: false
      t.text :question, null: false

      t.timestamps
    end
  end
end
