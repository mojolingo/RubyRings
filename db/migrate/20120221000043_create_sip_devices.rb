class CreateSipDevices < ActiveRecord::Migration
  def change
    create_table :sip_devices do |t|
      t.string    "name"
      t.string    "username"
      t.string    "type",          :default => "friend"
      t.string    "host",          :default => "dynamic"
      t.string    "secret"
      t.string    "disallow",      :default => "all"
      t.string    "allow",         :default => "ulaw, alaw, gsm, g722"
      t.string    "callerid"
      t.string    "callerid_name"
      t.string    "context",       :default => "default"
      t.string    "accountcode"
      t.string    "dtmfmode",      :default => "rfc2833"
      t.string    "language",      :default => "en"
      t.string    "qualify",       :default => "yes"
      t.string    "ipaddr"
      t.string    "port"
      t.integer   "regseconds"
      t.string    "nat",           :default => "no"
      t.string    "fullcontact"
      t.integer   "lastms"
      t.string    "regserver"
      t.timestamps
    end
  end
end
