class AddCategoryAndLocationToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :category, :string
    add_column :events, :location, :string
  end
end
