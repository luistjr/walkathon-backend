class DogSerializer < ActiveModel::Serializer
  attributes :img_url, :name, :breed, :comment
  has_many :appointments
end
