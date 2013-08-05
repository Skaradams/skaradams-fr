class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :identifier, use: :slugged

  has_many :articles

  validates_presence_of :identifier
end
