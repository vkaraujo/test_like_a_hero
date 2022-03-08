FactoryBot.define do
  factory :weapon do
    name { FFaker::Name.name }
    description { FFaker::Lorem.phrase }
    power_base { FFaker::Random.rand(3000..999999) }
    power_step { 100 }
    level { FFaker::Random.rand(1..99) }
  end
end
