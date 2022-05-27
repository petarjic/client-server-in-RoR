class Registration < ActiveRecord::Base

	# Keiko Climaco 5999930, all these validations for user input
	# checking for valid input length, input type, presence
	# also checks if locker is only registered once
	has_many :lockers
	belongs_to :organization
	validates :studentNumber, presence: true, :length => {:is => 7}, :numericality => {:only_integer => true}
	validates :firstName, presence: true
	validates :lastName, presence: true
	validates :email, presence: true, :format => {:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
	validates :lockerNumber, presence: true, :numericality => {:only_integer => true}, :uniqueness => true
	validates :lockerType, presence: true, inclusion: {in: %w(keyed coded), message: "%{value} is not a valid locker type"} 
	validates :lockerCombo, presence: true, :length => {:is => 4}, :numericality => {:only_integer => true}
	validates :numberOfSemesters, presence: true, :length => {:is => 1}, :numericality => {:only_integer => true}, :if => :valid_number?
	validates :termsAccepted, presence: true, confirmation: true

	# Keiko Climaco 5999930, implementing search function
	def self.search(query)
	  where("lockerNumber like ?", "%#{query}%")
	end

	#Keiko Climaco 5999930, sorting by locker number method!
def self.sorted_by_locker_number
  Registration.all.sort_by(&:lockerNumber)
end

	# Keiko Climaco 5999930, validation for number of semesters
	def valid_number?
		numberOfSemesters == 1 || numberOfSemesters == 2
	end
end
