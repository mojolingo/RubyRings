class CreateTrunks < ActiveRecord::Migration
  def change
    create_table :trunks do |t|

      t.timestamps
    end
  end
end
