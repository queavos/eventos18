class Event < ApplicationRecord

has_many :news
#belongs_to :users
has_many :registered
end
