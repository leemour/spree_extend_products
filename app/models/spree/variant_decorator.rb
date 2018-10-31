Spree::Variant.class_eval do
  belongs_to :country, class_name: 'Spree::Country'
end
