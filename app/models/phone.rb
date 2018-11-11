# == Schema Information
#
# Table name: phones
#
#  id            :bigint(8)        not null, primary key
#  admin_user_id :bigint(8)        not null
#  status        :string           default("inactive"), not null
#  number        :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Phone < ApplicationRecord
  belongs_to :admin_user
end
