class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table   :posts do |t|
      t.string     :title
      t.string     :description
      t.text       :content
      t.integer    :status
      t.string     :slug
      t.string     :tags
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
