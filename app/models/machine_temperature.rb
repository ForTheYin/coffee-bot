# == Schema Information
#
# Table name: machine_temperatures
#
#  id               :bigint(8)        not null, primary key
#  machine_state_id :bigint(8)        not null
#  degree           :decimal(8, 5)    not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class MachineTemperature < ApplicationRecord
  belongs_to :machine_state

  scope :ordered, -> { order('created_at ASC') }
end
