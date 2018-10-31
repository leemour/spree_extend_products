FactoryBot.define do
  factory :spree_author, class: 'Spree::Author' do
    sequence(:name)       {|n| "Name#{n}"}
    sequence(:surname)    {|n| "Surname#{n}"}
    sequence(:permalink)  {|n| "author#{n}"}
  end
end
