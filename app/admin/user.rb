ActiveAdmin.register User do
permit_params :name, :email, :password, :password_confirmation, :admin

form do |f|
	f.inputs do
		f.input :name
		f.input :email
		f.input :password
		f.input :password_confirmation
		f.input :admin
	end
	f.actions
end

index do
	selectable_column
	id_column
	column :name
	column :email
	column :admin
	actions
end

show do
 attributes_table do
   row :name
   row :email
   row :admin
   row :password
   row :password_confirmation
 end
 active_admin_comments
end

end
