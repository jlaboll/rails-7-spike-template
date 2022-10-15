class CreateEmailAddress < ActiveRecord::Migration[7.0]
  def change
    create_table :email_addresses do |t|

      t.timestamps
    end
  end
end
