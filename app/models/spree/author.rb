class Spree::Author < ApplicationRecord
  belongs_to :country, class_name: 'Spree::Country'
  has_many :products, class_name: 'Spree::Product'

  validates :full_name, presence: true, length: { in: 2..20 }
  validates :permalink, presence: true, length: { in: 2..20 }

  enum status: {
    enabled:  0,
    disabled: 1,
  }
  enum role: {
    author:      0,
    illustrator: 1,
  }
end
