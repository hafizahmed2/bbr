ActiveAdmin.register Experience do
  permit_params :user_name, :user_email, :date, :experience

    index do
    column :user_name
    column :user_email
    column('DATE')      { |exp| exp.date&.in_time_zone("Eastern Time (US & Canada)")&.strftime("%m/%d/%Y") }
    column(:experience) { |exp| truncate(exp.experience, length: 50) }
    column(:created_at) { |booking| booking.created_at&.in_time_zone("Eastern Time (US & Canada)") }
    column(:updated_at) { |booking| booking.updated_at&.in_time_zone("Eastern Time (US & Canada)") }
    actions
  end

  show do
    attributes_table do
      row :user_name
      row :user_email
      row('DATE')       { |exp| exp.date&.in_time_zone("Eastern Time (US & Canada)")&.strftime("%m/%d/%Y") }
      row(:experience)  { |exp| simple_format(exp.experience) }
      row('CREATED AT') { |exp| exp.created_at&.in_time_zone("Eastern Time (US & Canada)") }
      row('UPDATED AT') { |exp| exp.updated_at&.in_time_zone("Eastern Time (US & Canada)") }
    end

    active_admin_comments
  end
end
