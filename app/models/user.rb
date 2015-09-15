class User < ActiveRecord::Base
	has_secure_password
	before_create :save_token

	def User.create_token
		Digest::SHA1.hexdigest(SecureRandom.urlsafe_base64)
	end

	def save_token
		self.remember_token = User.create_token
	end

end
