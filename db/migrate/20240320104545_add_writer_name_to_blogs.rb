class AddWriterNameToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :writer_name, :string
  end
end
