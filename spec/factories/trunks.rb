
FactoryGirl.define do
  factory :trunk do
    name        'SuperITSP'
    association :sip_device, :strategy => :build
  end
end
