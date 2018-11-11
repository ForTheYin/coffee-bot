# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_admin_user
  if Rails.env.development?
    admin_user = AdminUser.create!(
        email: 'admin@example.com',
        password: 'password',
        password_confirmation: 'password')
    audio_device = AudioDevice.create!(
        name: 'Remote Speaker',
        ip: '127.0.0.1',
        port: '8090',
        app_key: 'sample')

    PhoneDevice.create!(
        account_sid: 'sample',
        auth_token: 'sample',
        from_number: '+6175555555'
    )
    Phone.create!(
        admin_user: admin_user,
        number: '+6175555555'
    )
    UserPreference.create!(
        admin_user: admin_user,
        audio_device: audio_device)
  end
end

def create_machines
  machine = Machine.create!(name: 'The Covfefe Maker', uuid: '123e4567-e89b-12d3-a456-426655440000')
  machine_state = MachineState.create!(
      machine: machine,
      brew_button: :powered_off,
      strength_button: :regular)

  (1..15).each do |index|
    MachineTemperature.create!(machine_state: machine_state, degree: index * 6 + rand(0..5))
  end
end

create_admin_user
create_machines
