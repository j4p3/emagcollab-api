class CreateTransforms < ActiveRecord::Migration
  def change
    create_table :transforms do |t|
      t.string :name
      t.string :hsl
      t.string :opacity

      t.timestamps
    end
  end
end
