class PerformScheduleJob < ApplicationJob
  queue_as :default

  DEFAULT_TEST_SOUND = 'http://www.orangefreesounds.com/wp-content/uploads/2018/06/Goat-noise.mp3'
  DEFAULT_MESSAGE = 'Wake up! Your coffee is ready!'
  def perform(scheduling, *args)
    audio_device = scheduling.admin_user.user_preference.audio_device
    phone_device = PhoneDevice.first

    audio_device.play!(DEFAULT_TEST_SOUND) if scheduling.play_on_audio_device?
    phone_device.text!(DEFAULT_MESSAGE, scheduling.admin_user.phone) if scheduling.play_on_phone?
  end
end
