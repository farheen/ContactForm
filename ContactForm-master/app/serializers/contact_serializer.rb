class ContactSerializer < ActiveModel::Serializer
  attributes  :first_name, :last_name, :email_id, :phone_no, :message

  def contact_id
    self.object.first_name
  end
end
