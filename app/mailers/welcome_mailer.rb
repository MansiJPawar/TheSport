class WelcomeMailer < ApplicationMailer
  def send_welcome_mail
    mail(to:"mansipawar517@gmail.com",from:"mansipawar664@gmail.com",subject:"testingmail",message:"hii")
    end
end
