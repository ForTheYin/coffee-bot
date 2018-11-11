# == Schema Information
#
# Table name: machine_actions
#
#  id           :bigint(8)        not null, primary key
#  machine_id   :bigint(8)        not null
#  uuid         :uuid
#  status       :string           default("queued"), not null
#  action       :string           not null
#  scheduled_at :datetime         not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class MachineAction < ApplicationRecord
  belongs_to :machine

  before_create :set_uuid
  before_create :set_scheduled_at

  enumerize :status, in: [:queued, :completed, :failed]
  scope :queued, ->{ where(status: :queued) }
  scope :ordered, -> { order('scheduled_at DESC') }

  private

  def set_uuid
    self[:uuid] ||= SecureRandom.uuid
  end

  def set_scheduled_at
    self[:scheduled_at] ||= Time.current
  end
end
