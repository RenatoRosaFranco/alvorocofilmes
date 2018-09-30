class AddColumnSlugToNewsletters < ActiveRecord::Migration[5.2]
  def change
    add_column :newsletters, :slug, :string
  end
end
