class CreateCommits < ActiveRecord::Migration
  def change
    create_table :commits do |t|
      t.text :mensage
      t.references :post, index: true

      t.timestamps
    end
  end
end
