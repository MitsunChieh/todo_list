# :nodoc:
class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      # `null: false` 的意思是 Migrate SQL 欄位時，設定為必填
      t.string :title,    null: false
      t.date   :due_date, null: false

      t.timestamps
    end
  end
end
