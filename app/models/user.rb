class User < ApplicationRecord
	validates :username, presence: true
	validates :username, length: { in: 2..10 }
	#validates :username, uniqueness: true
	
	validates :email, presence: true
	#validates :email, uniqueness: true
	validates :email, format: { with: /\A[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\z/, 
	  message: "must be an email" }
end
