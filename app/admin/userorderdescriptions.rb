ActiveAdmin.register Userorderdescription do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :userorder_id, :item_id, :quantity
  #
  # o
  #
  # permit_params do
  #   permitted = [:userorder_id, :item_id, :quantity]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
