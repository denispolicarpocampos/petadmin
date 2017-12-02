class Schedule < ApplicationRecord
  include Fae::BaseModelConcern

  enum status: { finalized: 0, canceled: 1 }

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


  belongs_to :client
  has_many :service_schedules, dependent: :destroy
  has_many :services, through: :service_schedules
end
