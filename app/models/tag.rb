class Tag < ApplicationRecord
  # Direct associations

  has_many   :restaurants,
             :class_name => "Tagging",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
