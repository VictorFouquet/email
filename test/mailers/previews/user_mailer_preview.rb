# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  def welcome_email
    UserMailer.welcome_email(User.create(email: Faker::Internet.free_email, description: Faker::Movies::HarryPotter.quote, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, encrypted_password: Faker::Internet.password))
  end 
end
