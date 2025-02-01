class CreateAchievements < ActiveRecord::Migration[7.0]
  def change
    create_table :achievements do |t|
      t.string :title
      t.text :description
      t.string :student_name
      t.string :category
      t.date :date

      t.timestamps
    end
  end
end
