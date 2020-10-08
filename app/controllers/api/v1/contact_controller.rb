class Api::V1::ContactController < ApplicationController
  def new
    @contact = Contact.new(contact_params)
  end

  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact
      ContactMailer.notification_email(@contact).deliver!
    else
      render error: { error: 'Unable to create contact.' }, status: 404
    end
  end

  def index
    @contact = Contact.all
    render json: @contact
  end

  def contact_params
    params.permit(:first_name, :last_name, :email_id, :phone_no, :message)
  end
end
