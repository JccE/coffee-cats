class User < ActiveRecord::Base
  # Remember to create a migration!

  validates :username, presence: true
  validates_uniqueness_of :email


  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def authenticate(plain_text_password, email_address)
    self.password == plain_text_password && self.email == email_address
  end
end


