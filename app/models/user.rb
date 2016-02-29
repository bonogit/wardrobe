class User < ActiveRecord::Base
  has_secure_password
  has_many :garments
  before_save {self.email = self.email.downcase}
  validates :username, presence: true, length: { maximum: 20},
  			uniqueness: {case_sensitive: false}
  validates :email, presence: true, length: {maximum: 100}, 
  	format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i},
  	uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: { minimum: 6 }
end
