# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_admin_user
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
end


def create_machines
  machine = Machine.create!(name: 'The Covfefe Maker', uuid: '123e4567-e89b-12d3-a456-426655440000')
  MachineState.create!(machine: machine)
end

create_admin_user
create_machines
