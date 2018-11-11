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

require 'test_helper'

class MachineStateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
