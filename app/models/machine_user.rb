# == Schema Information
#
# Table name: machine_users
#
#  id            :bigint(8)        not null, primary key
#  machine_id    :bigint(8)
#  admin_user_id :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class MachineUser < ApplicationRecord
end
