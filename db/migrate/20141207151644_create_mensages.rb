class CreateMensages < ActiveRecord::Migration
  def change
    create_table :mensages do |t|
      t.text :mensage
      t.references :post, index: true

      t.timestamps
    end
  end
end
