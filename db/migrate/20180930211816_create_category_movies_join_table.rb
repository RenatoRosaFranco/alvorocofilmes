class CreateCategoryMoviesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :categories, :movies do |t|
      t.references :category, foreign_key: true
      t.references :movie, foreign_key: true
    end
  end
end
