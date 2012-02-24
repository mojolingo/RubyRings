class Trunk < ActiveRecord::Base
  belongs_to :sip_device
  accepts_nested_attributes_for :sip_device
  attr_accessible :type, :name, :sip_device_attributes
  after_initialize :configurate_trunks

  validates_presence_of :name

  private
    def configurate_trunks
      build_sip_device
    end
end
