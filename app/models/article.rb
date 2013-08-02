class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  belongs_to :user
  belongs_to :category
  has_attached_file :picture, :styles => { :thumb => "850x200#" }

  validates_presence_of :title, :body, :published

  scope :published, where(published: true)
end
