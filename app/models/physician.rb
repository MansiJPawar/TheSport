class Physician < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments

    validates :slug, uniqueness: true
end
