ActiveAdmin.register Booking do
  permit_params :user_name, :user_email, :booking_for, :date, :time, :location, :services, :budget

  index do
    column :user_name
    column :user_email
    column :booking_for
    column('Date') { |booking| booking.date&.in_time_zone("Eastern Time (US & Canada)")&.strftime("%m/%d/%Y") }
    column("Time") { |booking| booking.time&.in_time_zone("Eastern Time (US & Canada)")&.strftime("%I:%M %p") }
    column :location
    column(:created_at) { |booking| booking.created_at&.in_time_zone("Eastern Time (US & Canada)") }
    column(:updated_at) { |booking| booking.updated_at&.in_time_zone("Eastern Time (US & Canada)") }
    actions
  end

  show do
    attributes_table do
      row :user_name
      row :user_email
      row :booking_for
      row('Date') { |booking| booking.date&.in_time_zone("Eastern Time (US & Canada)")&.strftime("%m/%d/%Y") }
      row("Time") { |booking| booking.time&.in_time_zone("Eastern Time (US & Canada)")&.strftime("%I:%M %p") }
      row :location
      row :services
      row :budget
      row('CREATED AT') { |booking| booking.created_at&.in_time_zone("Eastern Time (US & Canada)") }
      row('UPDATED AT') { |booking| booking.updated_at&.in_time_zone("Eastern Time (US & Canada)") }
    end

    active_admin_comments
  end
end
