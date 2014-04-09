class Userprofile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address, :date_of_birth, :email, :firstname, :lastname, :phone_number, :user_image_url, :user_id


def myuserprofile
  userprofile = Userprofile.find_by_user_id(current_user.id)
if userprofile.nil?
  redirect_to "/userprofiles/new"
else
  @user = User.find(current_user.id)
  @userprofile = Userprofile.find_by_user_id(@user.id)
  redirect_to "/userprofiles/#{@userprofile.id}"
end
end



end