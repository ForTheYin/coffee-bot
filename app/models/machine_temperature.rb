class MachineTemperature < ApplicationRecord
  belongs_to :machine_state

  scope :ordered, -> { order('created_at ASC') }
end
