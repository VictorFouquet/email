# Preview all emails at http://localhost:3000/rails/mailers/attendance_mailer
class AttendanceMailerPreview < ActionMailer::Preview

  def new_attendee_email
    AttendanceMailer.new_attendee_email(Attendance.create!(stripe_customer_id: Faker::Number.number(digits: 10), event_id: rand(Event.all.first.id..Event.all.last.id), user_id: rand(User.all.first.id..User.all.last.id)))
  end 
end
