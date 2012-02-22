class AddSipDeviceIdToTrunks < ActiveRecord::Migration
  def change
    change_table :trunks do |t|
      t.integer  "sip_device_id"
    end
  end
end
