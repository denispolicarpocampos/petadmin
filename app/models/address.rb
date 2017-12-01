class Address < ApplicationRecord
  include Fae::BaseModelConcern

  def fae_display_field
    
  end

  def  self.for_fae_index 
    order (:state)
  end

  def fae_nested_parent
    :client
  end

  validates :street, presence: true
  validates :number, presence: true
  validates :city, presence: true
  validates :state, presence: true


  belongs_to :client
end
