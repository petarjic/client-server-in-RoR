class Organization < ActiveRecord::Base
	#SEG2105 Keiko Climaco 5999930
	#Setting up associations
	has_many :registrations
	has_many :lockers
	has_many :active_ORassociations, class_name: "ORAssociations", foreign_key: "registration_id", dependent: :destroy
	has_many :following, through: active_ORassociations, source: :followed
	validates :name, presence: true
	validates :postalCode, length: { maximum: 6 }, presence: true
	validates :phone, length: { maximum: 10 }, presence: true
	validates :country, presence: true
	validates :streetAddress, presence: true
	validates :city, presence: true
	validates :email, presence: true

	def register(registrar)
		active_ORassociations.create(registrar_id: registrar.id)
	end

	def unregister(registrar)
		active_ORassociations.find_by(registrar_id: registrar.id).destroy
	end

	def registered?(registrar)
		active_ORassociations.include?(registrar)
	end
end
