class AddImagesToAProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :image_cover_url, :string
  end
end
