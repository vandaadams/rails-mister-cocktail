class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|

      t.timestamps
    end
  end
end
