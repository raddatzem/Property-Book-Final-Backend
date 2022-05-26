class PropertySerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :notes, :image
  has_one :user
  has_one :manager
end
