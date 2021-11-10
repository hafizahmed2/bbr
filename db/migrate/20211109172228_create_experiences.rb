class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :user_name, null: false
      t.string :user_email, null: false
      t.date :date, null: false
      t.text :experience, null: false

      t.timestamps
    end
  end
end
