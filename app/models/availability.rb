class Availability < ActiveRecord::Base
  belongs_to :shopper
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
