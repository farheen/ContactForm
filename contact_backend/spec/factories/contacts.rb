FactoryBot.define do
  factory :contact do
    first_name { "John" }
    last_name { "Snow" }
    email_id { "farheenzahara@gmail.com" }
    phone_no { 565656756567 }
    message { "MyString" }
  end
end
