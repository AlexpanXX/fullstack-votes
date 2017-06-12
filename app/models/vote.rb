class Vote < ApplicationRecord

  scope :most_votes, -> { order("total DESC") }
  scope :most_normal_votes, -> { order("normal_votes DESC") }
  scope :most_vip_votes, -> { order("vip_votes DESC") }

  def self.init(data)
    total = data[:total]
    people = data[:people]
    data[:vip_votes] = (total - people) / 4.0
    data[:normal_votes] = people - data[:vip_votes]
    data
  end
end
