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

class PhoneDevice < ApplicationRecord
  def text!(message, phone)
    client = Twilio::REST::Client.new(account_sid, auth_token)
    client.messages.create(
        from: from_number,
        body: message,
        to: phone.number
    )
  end
end
