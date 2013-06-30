class OrgMailer < ActionMailer::Base
  default from: "info@availity.com"

  def send_sms(number)
    providers = ["@vtext.com", "@txt.att.net", "@tmomail.net", "@messaging.sprintpcs.com", "@vmobl.com", "@email.uscc.net", "@messaging.nextel.com", "@myboostmobile.com", "@message.alltel.com"]
    to = ""
    providers.each do |provider|
      to += number + provider + ", "
    end
    mail(to: to, subject: "Important message from Availity", body: "Please log in to the Availity portal.")
    puts "SMS message attempted for: " + number
  end

  def send_email(email)
    mail(to: to, subject: "Important message from Availity", body: "Please log in to the Availity portal.")
    puts "Email message attempted for: " + email
  end
end
