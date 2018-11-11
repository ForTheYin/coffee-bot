# == Schema Information
#
# Table name: machine_actions
#
#  id           :bigint(8)        not null, primary key
#  machine_id   :bigint(8)        not null
#  uuid         :uuid
#  status       :string           default("queued"), not null
#  action       :string           not null
#  scheduled_at :datetime         not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class MachineActionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
