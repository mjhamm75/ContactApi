module OrgsHelper
  def getRanks(party_id)
    org = Org.where(:party_id => party_id)
    ranks = org.first.ranks.order("rank")
  end

  def contact_by_rank(ranks)
    ranks.each do |rank|
      contact(rank)
    end
  end

  def contact(rank)
    if(rank.contact_type_cd == "cell")
      OrgMailer.send_sms(rank.org.contact.cell).deliver
    elsif(rank.contact_type_cd == "phone")
      puts "Phone"
    else(rank.contact_type_cd == "email")
      puts "Email"
    end
  end
end
