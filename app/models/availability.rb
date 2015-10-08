class Availability < ActiveRecord::Base
  belongs_to :shopper

  def self.search(query)
    Availability.where("availabilities.date == ? ", query[:date])
    #Appartment.near('Antwerp').where("guest_capacity <= ?", 3).joins(:availabilities).where("availabilities.start_date <= ? AND availabilities.end_date >= ?", Date.new(2015,7,2), Date.new(2015,7,14))
  end


end
