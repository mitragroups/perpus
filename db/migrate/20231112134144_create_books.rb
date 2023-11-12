class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title, default: 'Belum ada judul buku'
      t.integer :price, limit: 100
      t.integer :page, null: false
      t.text :description

      t.timestamps
    end
  end
end
