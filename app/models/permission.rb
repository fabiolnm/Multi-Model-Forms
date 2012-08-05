class Permission < ActiveRecord::Base
  attr_accessible :restricted_area

  validates_presence_of :user_account, :restricted_area
  belongs_to :user_account
end

