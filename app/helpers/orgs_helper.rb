module OrgsHelper
  def getRanks(party_id)
    org = Org.where(:party_id => party_id)
    ranks = org.first.ranks.order("rank")
  end

  def contact_by_rank(ranks)
    t = Thread.new do
      ranks.each do |rank|
        if rank.flag == false
          contact(rank)
          sleep (10.seconds)
        else
          rank.update_attribute(:flag, false)
        end
      end
    end
  end

  def contact(rank)
    if(rank.contact_type_cd == "cell")
      OrgMailer.send_sms(rank.org.contact.cell).deliver
      puts "Cell"
    elsif(rank.contact_type_cd == "phone")
      puts "Phone"
    else(rank.contact_type_cd == "email")
      OrgMailer.send_email(rank.org.contact.email).deliver
      puts "Email"
    end
  end
end
