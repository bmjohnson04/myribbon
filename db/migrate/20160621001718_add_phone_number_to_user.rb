class AddPhoneNumberToUser < ActiveRecord::Migration
  def change
    add_column :users, :phone_number, :string
    add_column :users, :sex, :string, null: false, default: 'male'
  end
end
