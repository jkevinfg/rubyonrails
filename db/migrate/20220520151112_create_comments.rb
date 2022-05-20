class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, null: false, foreign_key: true #crea una columna en la tabla llamada article_id

      t.timestamps
    end
  end
end
