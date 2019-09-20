class House < ApplicationRecord
  validates :address, presence: true

  belongs_to :person,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: :Person
end
