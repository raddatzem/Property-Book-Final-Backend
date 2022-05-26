class User < ApplicationRecord
    has_many :properties
    has_many :managers, through: :properties


    has_secure_password

    #There has to be a name when creating a user
    validates :username, presence: true



    
    #Class or Instance methods
end
