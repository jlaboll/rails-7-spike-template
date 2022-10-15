class CreateHedgehog < ActiveRecord::Migration[7.0]
  def change
    create_table :hedgehogs do |t|

      t.timestamps
    end
  end
end
