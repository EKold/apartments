class Apartment < ApplicationRecord
    has_many :tenants, dependent: :destroy

    validates_presence_of :rooms, :address
    validates_numericality_of :rooms , on: :create, message: "is not a number"
end
