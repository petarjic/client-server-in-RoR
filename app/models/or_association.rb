class OrAssociation < ActiveRecord::Base
	belongs_to :registration, class_name: "Registration"
	belongs_to :registrar, class_nameL "Registrar"
	validates :registration_id, presence: true
	validates :registrar_id, presence: true
end
