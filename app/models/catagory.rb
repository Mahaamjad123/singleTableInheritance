class Catagory < ApplicationRecord
  
    scope :cars, -> { where(type: 'Car') } 
  scope :motorcycles, -> { where(type: 'Motorcycle') }
end
