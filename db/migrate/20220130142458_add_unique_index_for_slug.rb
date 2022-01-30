class AddUniqueIndexForSlug < ActiveRecord::Migration[5.2]
  def change
    add_index :physicians, :slug, unique: true
  end
end
