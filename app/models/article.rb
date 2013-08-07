class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  belongs_to :category, touch: true
  has_many :sections
  has_attached_file :picture, :styles => { :thumb => "850x200#" }

  validates_presence_of :title, :category_id

  default_scope order('articles.created_at ASC')
  scope :published, where(published: true)
end
