class Availability < ActiveRecord::Base
  belongs_to :shopper


  def self.search(query)
    Availability.where("availabilities.date = ? ", query[:date].to_date)
    #Appartment.near('Antwerp').where("guest_capacity <= ?", 3).joins(:availabilities).where("availabilities.start_date <= ? AND availabilities.end_date >= ?", Date.new(2015,7,2), Date.new(2015,7,14))
  end

  rails_admin do
    configure :shopper do
      label 'Owner of this availability: '
    end
  end

  # validates :verif_time_slot

  # private

  # def time_slot
  #   time_slot = :ending_hour - :beginning_hour
  # end

  # def verif_time_slot
  #   if time_slot < 0
  #     record.errors "Votre horaire est impossible"
  #   end
  # end

end
