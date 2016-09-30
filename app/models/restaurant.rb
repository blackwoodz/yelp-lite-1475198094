class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :ownerships,
             :dependent => :destroy

  has_many   :tags,
             :class_name => "Tagging",
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  has_many   :descriptive_tags,
             :through => :tags,
             :source => :tag

  # Validations

end
