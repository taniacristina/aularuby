class CreateNotadeaulas < ActiveRecord::Migration
  def change
    create_table :notadeaulas do |t|
      t.string :autor
      t.string :disciplina
      t.integer :ano
      t.integer :semestre
      t.date :data
      t.string :titulo
      t.text :texto

      t.timestamps null: false
    end
  end
end
