class Artist < ApplicationRecord
    has_secure_password
    has_secure_token :auth_token

    has_many :favorites

    validates_presence_of :email
    validates_uniqueness_of :email
end
