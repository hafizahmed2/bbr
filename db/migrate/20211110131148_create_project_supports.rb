class CreateProjectSupports < ActiveRecord::Migration[6.1]
  def change
    create_table :project_supports do |t|
      t.string :user_name
      t.string :user_email
      t.date :start_date
      t.string :location
      t.integer :groomer
      t.integer :union_requirement
      t.text :project_details

      t.timestamps
    end
  end
end
