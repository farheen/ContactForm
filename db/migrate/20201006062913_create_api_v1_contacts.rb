class CreateApiV1Contacts < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_id
      t.integer :phone_no
      t.string :message

      t.timestamps
    end
  end
end
