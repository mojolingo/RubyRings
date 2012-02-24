class AddNameToTrunks < ActiveRecord::Migration
  def change
    change_table :trunks do |t|
      t.string "name"
    end
  end
end
