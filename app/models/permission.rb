class Permission < ActiveRecord::Base
  attr_accessible :restricted_area, :grants

  validates_presence_of :user_account, :restricted_area, :grants
  belongs_to :user_account
end

