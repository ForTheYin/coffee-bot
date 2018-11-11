ActiveAdmin.register UserPreference do
  index do
    selectable_column
    id_column
    column :admin_user
    column :audio_device
    actions
  end

  form do |f|
    f.inputs do
      f.input :audio_device
    end
    f.actions
  end

end
