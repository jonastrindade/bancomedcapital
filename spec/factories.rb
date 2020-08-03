FactoryBot.define do 
  factory :user do
    email { "test@example.com" }
    password { "012345" }
  end
end