class Tenant < ApplicationRecord
    belongs_to :apartment

    validates_presence_of :name, :email

end
