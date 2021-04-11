class UserNotifierMailer < ActionMailer::Base
  default :from => 'nihongoyukikosensei@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_contact_email(email, title, content)
    @email = email
    @content = content
    mail( :to => "nihongoyukikosensei@gmail.com",
    :subject => title)
  end
end