class User < ActiveRecord::Base
  has_secure_password

  validates :first_name, 
  	:presence => true,
  	:length => { :within => 2..50 }
  
  validates :last_name, 
  	:presence => true,
  	:length => { :within => 2..50 }

  validates :email, 
  	:presence => true,
  	:length => { :within => 2..50 },
	:format => { :with => /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }

  validates :password, 
  	:length => { :within => 2..50 },
  	:confirmation => true
  
  validates :password_confirmation, 
  	:presence => true  

end
