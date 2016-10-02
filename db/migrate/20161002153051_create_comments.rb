class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :article_id

      t.timestamps null: false
    end
    add_index :comments, [:article_id, :created_at]
  end
end
