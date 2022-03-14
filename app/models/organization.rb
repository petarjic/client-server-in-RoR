class Organization < ActiveRecord::Base
	#SEG2105 Keiko Climaco 5999930
	#Setting up associations
	has_many :students
	has_many :lockers
	validates :name, presence: true
	validates :postalCode, length: { maximum: 6 }, presence: true
	validates :phone, length: { maximum: 10 }, presence: true
	validates :streetAddress, presence: true
	validates :city, presence: true
	validates :email, presence: true
end
