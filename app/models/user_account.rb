class UserAccount < ActiveRecord::Base
  attr_accessible :password, :person_id, :username
end
