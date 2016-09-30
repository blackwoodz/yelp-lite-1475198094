class Review < ApplicationRecord
  # Direct associations

  has_many   :owner_feedbacks,
             :dependent => :destroy

  belongs_to :restaurant

  belongs_to :user

  # Indirect associations

  # Validations

end
