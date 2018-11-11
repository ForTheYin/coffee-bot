ActiveAdmin.register Phone do
  index do
    selectable_column
    id_column
    column :admin_user
    column :status
    column :number
    actions
  end

  form do |f|
    f.inputs do
      f.input :number
    end
    f.actions
  end

end
