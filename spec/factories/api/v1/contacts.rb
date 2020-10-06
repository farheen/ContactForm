FactoryBot.define do
  factory :api_v1_contact, class: 'Api::V1::Contact' do
    first_name { "MyString" }
    last_name { "MyString" }
    email_id { "MyString" }
    phone_no { 1 }
    message { "MyString" }
  end
end
