class Tag < ApplicationRecord
  # Direct associations

  has_many   :restaurants,
             :class_name => "Tagging",
             :dependent => :destroy

  # Indirect associations

  has_many   :tagged_restaurants,
             :through => :restaurants,
             :source => :restaurant

  # Validations

end
