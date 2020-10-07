require 'rails_helper'

RSpec.describe "Api::V1::Contact", type: :request do

  describe "POST /api/v1/contact" do
    context "with valid parameters" do
      let(:valid_params) do
        {
           contact: {
            first_name: "John",
            last_name: "Snow",
            email: "johnsnow@example.com",
            phone_no: "9870980980",
            message: "aaaaaaaaaa"
          }
        }
      end

      it "creates a new contact" do
        expect { post "/api/v1/contact", params: valid_params }.to change(Contact, :count).by(+1)
        expect(response).to have_http_status :created
        expect(response.headers['email']).to eq api_v1_bathroom_url(Contact.last)
      end

      it "creates a contact with the correct attributes" do
         post "/api/v1/contacts", params: valid_params
         expect(Contact.last).to have_attributes valid_params[:contact]
      end
    end

    context "with invalid parameters" do
       # testing for validation failures is just as important!
       # ...
    end
  end
end
