class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  belongs_to :seller
end
