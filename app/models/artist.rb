class Artist < ApplicationRecord
    has_secure_password

    # has_many :beats

    validates_presence_of :email
    validates_uniqueness_of :email
end
