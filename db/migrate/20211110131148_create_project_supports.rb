class CreateProjectSupports < ActiveRecord::Migration[6.1]
  def change
    create_table :project_supports do |t|
      t.string :user_name, null: false
      t.string :user_email, null: false
      t.date :start_date, null: false
      t.string :location, null: false
      t.string :groomer, array: true, null: false
      t.integer :union_requirement, null: false
      t.text :project_details, null: false

      t.timestamps
    end
  end
end
