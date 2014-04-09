class User < ActiveRecord::Base 
 # Include default devise modules. Others available are: 
 # :token_authenticatable, :confirmable, 
 # :lockable, :timeoutable and :omniauthable 
 devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable 
 
 # Setup accessible (or protected) attributes for your model 
 attr_accessible :email, :password, :password_confirmation, :remember_me 
 
 has_many :orders
 has_one :userprofiles

  def gravatar_url 
    stripped_email = email.strip 
    downcased_email = stripped_email.downcase 
    hash = Digest::MD5.hexdigest(downcased_email) 
  
    "http://gravatar.com/avatar/#{hash}" 

  end


end 