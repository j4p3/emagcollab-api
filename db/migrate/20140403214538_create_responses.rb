class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.belongs_to :submission
      t.belongs_to :question
      t.text :content

      t.timestamps
    end
  end
end
