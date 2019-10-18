class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :password, length: {minimum: 6}, allow_nil: true
  after_initialize :ensure_session_token

  attr_reader :password 

  def self.generate_session_token
    SecureRandom.urlsafe_base64(16)
  end

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    return nil if !user
    user.is_password?(password) ? user : nil 
  end

  def reset_session_token!
    self.update!(session_token: User.generate_session_token)
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(password_digest).is_password?(password)
  end


end