class UserSerializer < ActiveModel::Serializer
  attributes :name
  
  has_many :dogs
  has_many :appointments
end
