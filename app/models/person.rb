class Person < ActiveRecord::Base
  attr_accessible :name, :user_account_attributes

  validates_presence_of :name

  has_one :user_account, dependent: :destroy, inverse_of: :person
  accepts_nested_attributes_for :user_account, allow_destroy: true

  def user_account
    @user_account = super
    @user_account = build_user_account if @user_account.nil?
    @user_account
  end
end

