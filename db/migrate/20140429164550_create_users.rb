class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, :middle_name, :last_name
      t.string :address1, :address2, :city, :state, :zip
      t.string :email
      t.string :contact_number
      t.string :gender, :shirt_size

      t.datetime :date_of_birth

      t.timestamps
    end
  end
end
