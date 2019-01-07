FactoryBot.define do
  factory :spree_collection, class: 'Spree::Collection' do
    name { "MyString" }
    kind { 1 }
    products_count { 1 }
    permalink { "MyString" }
  end
end
