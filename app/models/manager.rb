class Manager < ApplicationRecord

  has_many :properties
  has_many :users, through: :properties
end
