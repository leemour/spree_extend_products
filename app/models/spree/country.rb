class Spree::Country < Spree::Base
  scope :for_product_form, -> { where(nil) }
end
