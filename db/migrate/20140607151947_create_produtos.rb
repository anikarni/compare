class CreateProdutos < ActiveRecord::Migration
  def up
    create_table :produtos do |t|
      t.string :nome
      t.string :modelo
      t.string :preco
      t.string :tamanhos
      t.string :cores
      t.string :quantidade
      t.text :descricao
      t.attachment :foto

      t.timestamps
    end
  end
  def down
    drop_table :produtos
  end
end
