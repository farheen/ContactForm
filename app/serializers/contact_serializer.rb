class ContactSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email,:phone_no, :message

  def contact_id
    self.object.first_name
  end
end
