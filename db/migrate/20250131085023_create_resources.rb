class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :category
      t.string :file

      t.timestamps
    end
  end
end
