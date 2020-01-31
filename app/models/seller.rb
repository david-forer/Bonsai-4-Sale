class Seller < ApplicationRecord

    has_many :ratings
    has_many :users, through: :ratings
    has_many :plants

     has_secure_password

end
