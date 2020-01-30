class Plant < ApplicationRecord

  belongs_to :seller #created the plant
  has_many :ratings
  has_many :users, through: :ratings #people who reviewed it
  
end
