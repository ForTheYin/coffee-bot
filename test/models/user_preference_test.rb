# == Schema Information
#
# Table name: user_preferences
#
#  id              :bigint(8)        not null, primary key
#  admin_user_id   :bigint(8)        not null
#  audio_device_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class UserPreferenceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
