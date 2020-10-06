require 'rails_helper'

RSpec.describe "Api::V1::Contacts", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/api/v1/contact/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/contact/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/contact/index"
      expect(response).to have_http_status(:success)
    end
  end

end
