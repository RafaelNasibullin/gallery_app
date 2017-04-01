ActiveAdmin.register Post do

permit_params :title, :image, :user_id

form do |f|
	f.inputs do
		f.input :title
		f.input :image, as: :file
		f.input :user
	end
	f.actions
end

index do
	selectable_column
	id_column
	column :image do |product|
		image_tag product.image.url(:thumb)
	end
	column :title
	column :user
	actions
end

show do
 attributes_table do
   row :image do |product|
     image_tag product.image.url(:medium)
   end
   row :title
   row :user
 end
 active_admin_comments
end

end
