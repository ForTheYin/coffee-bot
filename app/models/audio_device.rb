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

class AudioDevice < ApplicationRecord
  class InvalidAddressError < StandardError
  end

  def play!(file_url)
    raise InvalidAddressError, 'IP address or port is invalid' unless ip.present? && port.present?

    connection = Faraday.new(url: "http://#{ip}:#{port}")
    connection.post do |req|
      req.url '/speaker'
      req.body =
          "<play_info>"\
            "<app_key>#{app_key}</app_key>"\
            "<url>#{file_url}</url>"\
            "<service>service text</service>"\
            "<reason></reason>"\
            "<message></message>"\
            "<volume>#{volume}</volume>"\
          "</play_info>"
    end
  end
end
