class Registration < ActiveRecord::Base
	has_many :lockers
	belongs_to :organization
	validates :studentNumber, presence: true, length: {maximum: 7}
	validates :firstName, presence: true
	validates :lastName, presence: true
	validates :email, presence: true
	validates :lockerNumber, presence: true
	validates :lockerType, presence: true, inclusion: {in: %w(keyed coded), message: "%{value} is not a valid locker type"} 
	validates :lockerCombo, presence: true
	validates :numberOfSemesters, presence: true, inclusion: {in: %w(1 2), message: "%{value} is not a valid number of semesters"} 
	validates :termsAccepted, presence: true, confirmation: true

	def self.search(query)
	  where("lockerNumber like ?", "%#{query}%")
	end
end
