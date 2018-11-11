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

require 'test_helper'

class MachineUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
