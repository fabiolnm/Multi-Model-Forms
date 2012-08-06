class UserAccount < ActiveRecord::Base
  attr_accessible :password, :username, :permissions_attributes

  validates_presence_of :username, :password, :person
  belongs_to :person
  has_many :permissions, dependent: :destroy, inverse_of: :user_account

  accepts_nested_attributes_for :permissions, allow_destroy: true, reject_if: proc { |attrs|
    attrs["grants"].blank?
  }

  def permissions_types
    hash = {}
    permissions.each { |p| hash[p.restricted_area] = p }

    [ "admin", "backups", "logs" ].each { |area|
      hash[area] = Permission.new restricted_area: area unless hash.has_key? area
    }
    hash.values
  end
end

