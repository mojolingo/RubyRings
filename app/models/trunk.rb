class Trunk < ActiveRecord::Base
  belongs_to :sip_device
  accepts_nested_attributes_for :sip_device

#  class << self
#    def new_with_sip_device
#      Trunk.new.tap do |t|
#        t.sip_device = SipDevice.new
#      end
#    end
#  end

end
