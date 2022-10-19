class AddFkConstraints < ActiveRecord::Migration[7.0]
  def change
    add_reference  :veterinarians, :address
    add_reference :owners, :address
    add_reference  :veterinarians, :phone_number
    add_reference  :owners, :phone_number
    add_reference  :veterinarians, :email_address
    add_reference  :owners, :email_address
    add_reference  :hedgehogs, :owner
    add_reference :dogs, :owner
    add_foreign_key  :veterinarians, :addresses
    add_foreign_key :owners, :addresses
    add_foreign_key  :veterinarians, :phone_numbers
    add_foreign_key  :owners, :phone_numbers
    add_foreign_key  :veterinarians, :email_addresses
    add_foreign_key  :owners, :email_addresses
    add_foreign_key  :hedgehogs, :owners
    add_foreign_key :dogs, :owners
  end
end
