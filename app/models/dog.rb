class Dog < ApplicationRecord
    has_many :appointments, dependent: :destroy
end
