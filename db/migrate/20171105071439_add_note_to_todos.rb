# :nodoc:
class AddNoteToTodos < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :note, :text
  end
end
