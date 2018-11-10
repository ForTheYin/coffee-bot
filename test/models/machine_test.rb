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

require 'test_helper'

class MachineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
