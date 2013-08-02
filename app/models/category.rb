class Category < ActiveRecord::Base
  has_many :articles

  validates_presence_of :identifier
end
