class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :detail
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
