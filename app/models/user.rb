class User < ApplicationRecord
    has_many :cars, class_name: 'Car'
  has_many :motorcycles, class_name: 'Motorcycle'
end
