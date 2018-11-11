# == Schema Information
#
# Table name: audio_devices
#
#  id         :bigint(8)        not null, primary key
#  status     :string           default("inactive"), not null
#  name       :string
#  ip         :string           not null
#  port       :integer          not null
#  app_key    :string           not null
#  volume     :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AudioDeviceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
