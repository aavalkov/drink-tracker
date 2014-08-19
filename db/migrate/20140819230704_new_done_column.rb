class NewDoneColumn < ActiveRecord::Migration
  def change
    add_column :reasons, :done, :boolean
  end
end
