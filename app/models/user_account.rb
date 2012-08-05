class UserAccount < ActiveRecord::Base
  attr_accessible :password, :username

  validates_presence_of :username, :password, :person
  belongs_to :person
end

