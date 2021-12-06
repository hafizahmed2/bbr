ActiveAdmin.register Question do
  permit_params :user_name, :user_email, :question

  index do
    column :user_name
    column :user_email
    column(:question) { |q| truncate(q.question, length: 50) }
    column :created_at
    column :updated_at
    actions
  end

  show do
    attributes_table do
      row :user_name
      row :user_email
      row(:question) { |q| simple_format(q.question) }
      row :created_at
      row :updated_at
    end

    active_admin_comments
  end
end
