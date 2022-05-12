class Registration < ActiveRecord::Base

	# Keiko Climaco 5999930, validation checks for user input
	has_many :lockers
	belongs_to :organization
	validates :studentNumber, presence: true, length: {maximum: 7}
	validates :firstName, presence: true
	validates :lastName, presence: true
	validates :email, presence: true
	validates :lockerNumber, presence: true
	validates :lockerType, presence: true, inclusion: {in: %w(keyed coded), message: "%{value} is not a valid locker type"} 
	validates :lockerCombo, presence: true
	validates :numberOfSemesters, presence: true
	validates :termsAccepted, presence: true, confirmation: true

	# Keiko Climaco 5999930, implementing search function
	def self.search(query)
	  where("lockerNumber like ?", "%#{query}%")
	end
end
