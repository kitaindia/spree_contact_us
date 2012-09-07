class Spree::Contact < ActiveRecord::Base

  validates :email, :message, :name, :subject, :presence => true

  attr_accessible :email, :message, :name, :subject
end
