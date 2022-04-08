ActiveAdmin.register Cafe do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :address, :opening_hour, :closing_hour, :latitude, :longitude, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :address, :opening_hour, :closing_hour, :latitude, :longitude, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  # index do
  #   selectable_column
  #   id_column
  #   column :email

  #   column :created_at
  #   column :updated_at
  #   actions
  # end
  


  # index do
  #   selectable_column
  #   id_column
  #   column :email
  #   column :current_sign_in_at
  #   column :sign_in_count
  #   column :created_at
  #   actions
  # end

  # form do |f|
  #   f.inputs do
  #     f.input :email
  #     f.input :password
  #     f.input :password_confirmation
  #   end
  #   f.actions
  # end

end
