# == Schema Information
#
# Table name: machines
#
#  id         :bigint(8)        not null, primary key
#  uuid       :uuid
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Machine < ApplicationRecord
  has_many :machine_users
  has_many :machine_actions

end
