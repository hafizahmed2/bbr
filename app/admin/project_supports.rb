ActiveAdmin.register ProjectSupport do
  permit_params :user_name, :user_email, :start_date, :location, :groomer, :union_requirement, :project_details

  index do
    column :user_name
    column :user_email
    column('START DATE') { |s| s.start_date&.in_time_zone("Eastern Time (US & Canada)")&.strftime("%m/%d/%Y") }
    column :location
    column :groomer
    column :union_requirement
    column(:project_details) { |s| truncate(s.project_details, length: 50) }
    column(:created_at) { |booking| booking.created_at&.in_time_zone("Eastern Time (US & Canada)") }
    column(:updated_at) { |booking| booking.updated_at&.in_time_zone("Eastern Time (US & Canada)") }
    actions
  end

  show do
    attributes_table do
      row :user_name
      row :user_email
      row('START DATE') { |s| s.start_date&.in_time_zone("Eastern Time (US & Canada)")&.strftime("%m/%d/%Y") }
      row :location
      row :groomer
      row :union_requirement
      row(:project_details) { |s| simple_format(s.project_details) }
      row :created_at
      row :updated_at
    end

    active_admin_comments
  end
end
