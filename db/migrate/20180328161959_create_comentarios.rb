class CreateComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios do |t|
      t.text :descripcion
      t.references :user, foreign_key: true
      t.references :comentable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
