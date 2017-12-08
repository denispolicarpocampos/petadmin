class Discount < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, uniqueness: true, presence: true
  validates :value, uniqueness: true, presence: true
  validates :kind, presence: true
  validate :error, if: :percentage?

  enum kind: {cash: 0, percentage: 1}

  def fae_display_field
    title
  end

  def error
    errors.add(:value, "value cannot be more than 100%") if self.value > 100
  end


end
