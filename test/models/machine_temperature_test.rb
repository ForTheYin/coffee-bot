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

require 'test_helper'

class MachineTemperatureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
