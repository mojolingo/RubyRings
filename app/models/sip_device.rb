class SipDevice < ActiveRecord::Base
  after_initialize :configurate_sip_device
  validates_presence_of :name, :secret
  private
    def configurate_sip_device
      if self.new_record?
        self.name   = SecureRandom.hex(10)
        self.secret = SecureRandom.hex(10)
      end
    end
end
