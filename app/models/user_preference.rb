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

class UserPreference < ApplicationRecord
  belongs_to :admin_user
  belongs_to :audio_device, required: false
  belongs_to :phone, required: false
end
