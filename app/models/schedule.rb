# == Schema Information
#
# Table name: schedules
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Schedule < ApplicationRecord
end
