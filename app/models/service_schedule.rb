class ServiceSchedule < ApplicationRecord
  include Fae::BaseModelConcern

  def fae_display_field
    
  end

  belongs_to :service
  belongs_to :schedule
end
