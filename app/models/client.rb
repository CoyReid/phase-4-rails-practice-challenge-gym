class Client < ApplicationRecord
  has_many :memberships
  has_many :gyms, through: :memberships

  def total_amount
    total = self.memberships.sum {|m| m.charge}
    self.as_json.merge({total_amount: total})
  end
end
