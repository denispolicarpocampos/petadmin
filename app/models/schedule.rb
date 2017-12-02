class Schedule < ApplicationRecord
  include Fae::BaseModelConcern

  enum status: { scheduled: 0, finalized: 1, canceled: 2 }

  validates :date, presence: true
  validates :hour, presence: true
  validates :services, presence: true
  validates :status, presence: true
  validates :client, presence: true

  def fae_display_field
    date
  end

  def self.for_fae_index
    order(:date)
  end

  after_save :schedule


  belongs_to :client
  has_many :service_schedules, dependent: :destroy
  has_many :services, through: :service_schedules

  private
    def schedule
      ScheduleJob.perform_later self if self.scheduled?
    end
end
