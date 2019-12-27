class Artist < ApplicationRecord
    has_secure_password

    has_many :beats

    validates :email, presence: true
    validates :email, uniqueness: true
end
