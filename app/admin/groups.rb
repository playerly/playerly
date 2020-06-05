ActiveAdmin.register Group do
	permit_params :sport_id, :name, :description, :profile_image, :approval_type_id, :group_type_id, :has_skill_requirement, :skill_level_id, :has_max_capacity, :max_capacity, :email, :phone, :address, :city, :state, :post_code, :is_private, :is_active, :is_banned
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :sport_id, :name, :description, :profile_image, :approval_type_id, :group_type_id, :has_skill_requirement, :skill_level_id, :has_max_capacity, :max_capacity, :email, :phone, :address, :city, :state, :post_code, :is_private, :is_active, :is_banned
  #
  # or
  #
  # permit_params do
  #   permitted = [:sport_id, :name, :description, :profile_image, :approval_type_id, :group_type_id, :has_skill_requirement, :skill_level_id, :has_max_capacity, :max_capacity, :email, :phone, :address, :city, :state, :post_code, :is_private, :is_active, :is_banned]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
