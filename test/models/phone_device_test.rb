# == Schema Information
#
# Table name: phone_devices
#
#  id          :bigint(8)        not null, primary key
#  status      :string           default("inactive"), not null
#  account_sid :string           not null
#  auth_token  :string           not null
#  from_number :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PhoneDeviceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
