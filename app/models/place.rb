class Place < ApplicationRecord
	validates :business_id, presence: true

	def getTampaPlaces
		Places.where(city: "Tampa")
	end
end
