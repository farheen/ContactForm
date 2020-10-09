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

      it "creates a new contact" do
        expect { post "/api/v1/contact/create", params: valid_params }.to change(Contact, :count).by(1)
        expect(response).to have_http_status :success
      end

      it "creates a contact with the correct attributes" do
         post "/api/v1/contact/create", params: valid_params
         expect(Contact.last).to have_attributes valid_params
      end


      it "sends out confirmation email." do
        expect { post :create, valid_params }.to change { ActionMailer::Base.deliveries.count }.by(1)
      end    
      
    end
  end
end
