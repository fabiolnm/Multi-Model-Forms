class UserAccount < ActiveRecord::Base
  attr_accessible :password, :person_id, :username

  validates_presence_of :username, :password
  belongs_to :person
end

