class Message < ActiveRecord::Base
  validates_presence_of :name, :email, :body
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
