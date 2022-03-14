class Locker < ActiveRecord::Base
	belongs_to :organization
	belongs_to :student
	validates :lockerNumber, presence: true
	validates :location, presence: true
	validates :type, presence: true
	validates :combo, presence: true
end
