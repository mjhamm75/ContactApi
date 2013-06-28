class OrgMailer < ActionMailer::Base
  default from: "info@availity.com"
  providers = ["@vtext.com", "@txt.att.net", "@tmomail.net", "@messaging.sprintpcs.com", "@vmobl.com", "@email.uscc.net", "@messaging.nextel.com", "@myboostmobile.com", "@message.alltel.com"]
  def test_email

    mail(to: "9047284799@vtext.com", subject: "Testing user mailer", body: "TEST TEST TEST")

  end

  def send_email
    mail(to: "9047284799@vtext.com", subject: "Testing user mailer", body: "TEST TEST TEST")
  end

  def send_sms(number)
    providers.each do |provider|
      binding.pry
      mail(to: "#{number}#{provider}", subject: "Testing user mailer", body: "TEST TEST TEST")
      puts "Messsage attempted for: " + number
    end
  end
end
