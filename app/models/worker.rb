class Worker < ActiveRecord::Base


has_many :operations, dependent: :destroy 


 #validations
	validates :name, presence: true



end
