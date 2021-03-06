class User < ApplicationRecord

    has_many :plants

    has_many :ratings
    has_many :sellers, through: :ratings

    validates :username, uniqueness: true, presence: true

    has_secure_password

end
