class Spree::Brand < Spree::Base
  belongs_to :country, class_name: 'Spree::Country'
  has_many :products, class_name: 'Spree::Product'

  has_attached_file :logo,
    styles: {
      mini:     '70x70#',
      medium:   '210x110#',
      large:    '420x238#',
    },
    default_style: :large,
    # TODO create default images
    default_url: "/assets/fallback/brand_logos/:style.png",
    url: "/uploads/brand_logos/:id/:style_:basename.:extension",
    path: ":rails_root/public/uploads/brand_logos/:id/:style_:basename.:extension"


  validates :name, presence: true, length: { in: 2..20 }
  validates :permalink, presence: true, length: { in: 2..20 }

  enum status: {
    enabled:  0,
    disabled: 1,
  }
end
