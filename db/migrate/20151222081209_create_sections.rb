class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
	  t.text :content
	  t.integer :order
	  t.integer :layer_id

      t.timestamps null: false
    end
  end
end
