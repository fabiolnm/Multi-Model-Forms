class Person < ActiveRecord::Base
  attr_accessible :name, :user_account_attributes

  validates_presence_of :name

  has_one :user_account, inverse_of: :person
  accepts_nested_attributes_for :user_account, allow_destroy: true
end

