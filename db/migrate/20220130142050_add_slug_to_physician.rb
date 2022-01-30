class AddSlugToPhysician < ActiveRecord::Migration[5.2]
  def change
    add_column :physicians, :slug, :string
  end
end
