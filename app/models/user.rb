class User < ActiveRecord::Base
 
  authenticates_with_sorcery!
  attr_accessible :username, :email, :password, :password_confirmation

  validates :name, :presence => true
   validates_format_of :email, :with => /^[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info|qa))$/i, :message => "is not a valid format"

  validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password
 attr_accessible :billing_address, :creditcard_num, :creditcard_type, :crypted_password, :email, :is_admin, :is_customer, :is_manager, :name, :reward_points, :salt, :security_num, :username

has_many :bookings
has_many :payments
end
