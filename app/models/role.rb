class Role < ApplicationRecord
	validates :name , :presence => { :message => "No puede quedar vacio"}, :uniqueness => { :message => "Debe ser unico."}

	has_many :user

end
