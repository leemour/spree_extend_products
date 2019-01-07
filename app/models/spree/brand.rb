class Spree::Brand < Spree::Base
  belongs_to :country, class_name: 'Spree::Country'
  has_many :products, class_name: 'Spree::Product', dependent: :destroy

  mount_uploader :logo, BrandLogoUploader

  validates :name, presence: true, length: { in: 2..20 }
  validates :permalink, presence: true, length: { in: 2..20 }

  enum status: {
    enabled:  0,
    disabled: 1,
  }
end
