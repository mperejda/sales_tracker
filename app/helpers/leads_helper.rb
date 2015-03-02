module LeadsHelper

  def hot_leads
    Lead.all.select { |lead| lead.temperature == "hot"}
  end

  def medium_leads
    Lead.all.select { |lead| lead.temperature == "med"}
  end

  def cold_leads
    Lead.all.select { |lead| lead.temperature == "cold"}
  end

end
