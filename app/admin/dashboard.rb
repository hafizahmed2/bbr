# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Bookings" do
          table_for Booking.last(5) do
            column :user_name
            column :user_email
            column :booking_for
            column('Date') { |booking| booking.date&.in_time_zone("Eastern Time (US & Canada)")&.strftime("%m/%d/%Y") }
            column("Time") { |booking| booking.time&.in_time_zone("Eastern Time (US & Canada)")&.strftime("%I:%M %p") }
            column('') { |booking| raw '<a href="'+ admin_booking_path(booking) +'"> show </a>'}
          end
        end
      end
    end
  end
end
