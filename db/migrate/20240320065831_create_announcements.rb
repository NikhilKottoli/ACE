class CreateAnnouncements < ActiveRecord::Migration[7.0]
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :description
      t.integer :readtime

      t.timestamps
    end
  end
end
