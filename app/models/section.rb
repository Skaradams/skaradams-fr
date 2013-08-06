class Section < ActiveRecord::Base
  belongs_to :article
  has_attached_file :picture, :styles => { :thumb => "850x200#" }

  validates_presence_of :article_id
end
