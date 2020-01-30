class User < ApplicationRecord

    has_many :plants
    has_many :ratings
    has_many :sellers, through: :ratings

end
