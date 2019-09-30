class User < ApplicationRecord
    validates :username, presence: true
    validates :session_token, presence: true 
    validates :password_digest, presence: {message: "Password can't be blank"}
    validates :password, allow_nil: true, length {minimun: 5}
    before_validation :ensure_session_token

    def self.find_by_credentials(name, pass)
        user = User.find_by(username: user)
        pass = User.find_by(password: pass)
        return user if user && pass 
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end

    def reset_session_token!
        self.session_token = 
    end
end
