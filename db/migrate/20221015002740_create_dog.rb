class CreateDog < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs do |t|

      t.timestamps
    end
  end
end
