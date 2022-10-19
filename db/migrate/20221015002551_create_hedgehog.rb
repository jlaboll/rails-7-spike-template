class CreateHedgehog < ActiveRecord::Migration[7.0]
  def change
    create_table :hedgehogs do |t|
      t.string :name
      t.date :birthday
      t.string :coloring
      t.string :breed

      t.timestamps
    end
  end
end
