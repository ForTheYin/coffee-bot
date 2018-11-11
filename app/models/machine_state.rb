# == Schema Information
#
# Table name: machine_states
#
#  id          :bigint(8)        not null, primary key
#  machine_id  :bigint(8)        not null
#  brew_button :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class MachineState < ApplicationRecord
  belongs_to :machine
  has_many :machine_temperatures

  enumerize :brew_button, in: [:powered_off, :brewing]

  def add_temperature!(degree)
    MachineTemperature.create!(machine_state: self, degree: degree)
  end
end
