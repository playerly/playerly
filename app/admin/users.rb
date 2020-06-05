ActiveAdmin.register User do
	permit_params :username, :email, :fname, :lname, :bio, :dob, :password_digest, :gender_id, :profile_image, :city, :post_code, :last_active, :is_private, :is_active, :is_banned
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :username, :email, :fname, :lname, :bio, :dob, :password_digest, :gender_id, :profile_image, :city, :post_code, :last_active, :is_private, :is_active, :is_banned
  #
  # or
  #
  # permit_params do
  #   permitted = [:username, :email, :fname, :lname, :bio, :dob, :password_digest, :gender_id, :profile_image, :city, :post_code, :last_active, :is_private, :is_active, :is_banned]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
