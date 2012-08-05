class UserAccount < ActiveRecord::Base
  attr_accessible :password, :username, :permissions_attributes

  validates_presence_of :username, :password, :person
  belongs_to :person
  has_many :permissions, inverse_of: :user_account

  accepts_nested_attributes_for :permissions, allow_destroy: true
end

