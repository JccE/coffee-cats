class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, presence: true
  validates_uniqueness_of :email

end
