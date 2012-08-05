class Person < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name
  has_one :user_account
end

