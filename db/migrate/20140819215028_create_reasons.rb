class CreateReasons < ActiveRecord::Migration
  def change
    create_table :reasons do |t|
      t.string :description

      t.timestamps
    end
  end
end
