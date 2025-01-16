class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :eventdate
      t.string :slogan

      t.timestamps
    end
  end
end
