class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.string :title
      t.text :description
      t.integer :pages

      t.timestamps
    end
  end
end
