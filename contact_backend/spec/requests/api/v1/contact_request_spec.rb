require 'rails_helper'

RSpec.describe "Api::V1::Contact", type: :request do

  describe "POST /api/v1/contact/create" do
    context "with valid parameters" do
      let(:valid_params) do
        {
            first_name: "John",
            last_name: "Snow",
            email_id: "johnsnow@example.com",
            phone_no: 9870980980,
            message: "aaaaaaaaaa"
        }
      end 
  
      it "creates a contact with the correct attributes" do
         post "/api/v1/contact/create", params: valid_params
         expect(Contact.last).to have_attributes valid_params
      end
    end
  end
  
  describe "notification_email" do
     contact = FactoryBot.create(:contact)
     let(:mail) { ContactMailer.notification_email(contact) }

     it "renders the headers" do
       expect(mail.to).to eq(["info@ajackus.com"])
       expect(mail.from).to eq(["farheenzahara@gmail.com"])
     end
   end
end
