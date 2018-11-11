class PlayAlarmMusicJob < ApplicationJob
  queue_as :default

  def perform(audio_device, file_url, *args)
    audio_device.play!(file_url)
  end
end
