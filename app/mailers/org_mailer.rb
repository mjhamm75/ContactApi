class OrgMailer < ActionMailer::Base
  default from: "info@availity.com"

  def test_email

    mail(to: "9047284799@vtext.com", subject: "Testing user mailer", body: "TEST TEST TEST")

  end

  def send_email
    mail(to: "9047284799@vtext.com", subject: "Testing user mailer", body: "TEST TEST TEST")
  end
end
