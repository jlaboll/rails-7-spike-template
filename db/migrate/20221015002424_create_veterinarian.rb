class CreateVeterinarian < ActiveRecord::Migration[7.0]
  def change
    create_table :veterinarians do |t|

      t.timestamps
    end
  end
end
