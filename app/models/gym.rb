class Gym < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :client, through: :memberships
end
