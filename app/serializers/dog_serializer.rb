class DogSerializer < ActiveModel::Serializer
  attributes :id, :img_url, :name, :breed, :comment
  has_many :appointments
end
