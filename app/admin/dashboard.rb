ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc {I18n.t("active_admin.dashboard")}

  content title: proc {I18n.t("active_admin.dashboard")} do
    render partial: 'admin/overview', locals: {
        :@machine => Machine.first,
        :@machine_state => Machine.first.machine_state,
        :@machine_temperatures => Machine.first.machine_state.machine_temperatures.ordered.limit(50),
        :@last_machine_temperature => Machine.first.machine_state.machine_temperatures.last,
        :@performed_actions => Machine.first.machine_actions.ordered.limit(50),
        :@last_performed_action => Machine.first.machine_actions.last
    }
  end # content
end
