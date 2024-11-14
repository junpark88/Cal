class CreateResults < ActiveRecord::Migration[8.0]
  def change
    create_table :results do |t|
      t.float :a
      t.float :b
      t.float :c
      t.float :d
      t.float :result

      t.timestamps
    end
  end
end
