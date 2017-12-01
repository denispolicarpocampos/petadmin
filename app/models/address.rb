class Address < ApplicationRecord
  include Fae::BaseModelConcern

  def fae_display_field
    id
  end

  def  self.for_fae_index 
    order (:id)
  end

  validates :street, presence: true
  validates :number, presence: true
  validates :city, presence: true
  validates :state, presence: true


  belongs_to :client
end
