class Registration < ActiveRecord::Base
	has_many :lockers
	belongs_to :organization
	validates :studentNumber, presence: true, length: {maximum: 7}
	validates :firstName, presence: true
	validates :lastName, presence: true
	validates :email, presence: true
	validates :lockerNumber, presence: true
	validates :lockerType, presence: true 
	validates :lockerCombo, presence: true
	validates :numberOfSemesters, presence: true
	validates :termsAccepted, presence: true, confirmation: true

	def self.search(query)
	  where("lockerNumber like ?", "%#{query}%")
	end
end
