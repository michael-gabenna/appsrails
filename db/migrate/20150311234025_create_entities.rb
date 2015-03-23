class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name
      t.text :street
      t.string :tel

      t.timestamps null: false
    end
  end
end
