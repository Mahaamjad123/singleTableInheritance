class Catagory < ApplicationRecord
  #  belongs_to :car
  #  belogns_to :motorcycle
    scope :cars, -> { where(type: 'Car') } 
  scope :motorcycles, -> { where(type: 'Motorcycle') }
end
