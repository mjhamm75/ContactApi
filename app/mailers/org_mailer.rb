class OrgMailer < ActionMailer::Base
  default from: "info@availity.com"

  def send_sms(number)
    providers = ["@vtext.com", "@txt.att.net", "@tmomail.net", "@messaging.sprintpcs.com", "@vmobl.com", "@email.uscc.net", "@messaging.nextel.com", "@myboostmobile.com", "@message.alltel.com"]
    to = ""
    providers.each do |provider|
      to += number + provider + ", "
    end
    # mail(to: to, subject: "Testing user mailer", body: "TEST TEST TEST")
    puts "SMS message attempted for: " + number
  end

  def send_email(email)
    mail(to: "jason.hamm@availity.com", subject: "Testing user mailer", body: "Testing Testing Testing")
    puts "Email message attempted for: " + email
  end
end
