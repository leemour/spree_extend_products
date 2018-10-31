FactoryBot.define do
  factory :spree_brand, class: 'Spree::Brand' do
    sequence(:name)      {|n| "Brand#{n}"}
    sequence(:permalink) {|n| "brand#{n}"}
  end
end
