class CreateCores < ActiveRecord::Migration[7.0]
  def change
    create_table :cores do |t|
      t.string :name
      t.string :position
      t.string :github
      t.string :linkedin
      t.string :email

      t.timestamps
    end
  end
end
