class EmailsController < ApplicationController
  def new
  end

  def create
    email = params[:email][:email]
    title = params[:email][:title]
    content = params[:email][:content]
    UserNotifierMailer.send_contact_email(email, title, content).deliver_now
    flash[:success] = "Message sent!"
    redirect_to new_email_path
    #redirect_to new_email_path, notice: "Message sent!"
  end
end