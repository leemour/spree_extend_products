class Spree::Collection < ApplicationRecord
  has_many :products, class_name: 'Spree::Product', dependent: :nullify

  validates :name, presence: true, length: { in: 2..20 }
  validates :permalink, presence: true, length: { in: 2..20 }
end
