# == Schema Information
#
# Table name: machine_users
#
#  id            :bigint(8)        not null, primary key
#  machine_id    :bigint(8)        not null
#  admin_user_id :bigint(8)        not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class MachineUser < ApplicationRecord
  belongs_to :machine
  belongs_to :admin_user
end
