class Api::V1::ContactController < ApplicationController
  def new
    @contact = Contact.new(contact_params)
  end
  
  def create
    @contact = Contact.new(:first_name, :last_name, :email, :phone_no, :message)
    if @contact.save
      render json: @user
    else
      render error: { error: 'Unable to create contact.' }, status: 404
    end
  end

  def index
  end

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone_no, :message)
  end
end
