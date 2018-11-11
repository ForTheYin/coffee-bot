ActiveAdmin.register AudioDevice do
  permit_params :name, :ip, :port, :app_key, :volume

  index do
    selectable_column
    id_column
    column :name
    column :status
    column :ip
    column :port
    column :app_key
    column :volume
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :ip
      f.input :port
      f.input :app_key
      f.input :volume
    end
    f.actions
  end

end
