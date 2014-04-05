class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :email
      t.string :name
      t.boolean :pickup
      t.attachment :image

      t.timestamps
    end
  end
end
