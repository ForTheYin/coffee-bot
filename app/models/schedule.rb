# == Schema Information
#
# Table name: schedules
#
#  id                   :bigint(8)        not null, primary key
#  admin_user_id        :bigint(8)        not null
#  scheduled_at         :datetime         not null
#  play_on_audio_device :boolean          default(FALSE)
#  play_on_phone        :boolean          default(FALSE)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Schedule < ApplicationRecord
  belongs_to :admin_user

  def play_on_audio_device?
    self[:play_on_audio_device]
  end

  def play_on_phone?
    self[:play_on_phone]
  end
end
