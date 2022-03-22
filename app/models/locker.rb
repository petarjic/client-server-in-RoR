class Locker < ActiveRecord::Base

	belongs_to :registration
	belongs_to :organization
	validates :lockerNumber, presence: true
	validates :location, presence: true
	validates :type, presence: true
	validates :combo, presence: true
	
	class KeyedLocker < Locker 

	end

	class CodedLocker < Locker
		def combo
		end
	end
end
