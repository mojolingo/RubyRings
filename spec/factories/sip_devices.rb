# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sip_device do
    name          { SecureRandom.hex(10) }
    username      ''
    type          'friend'
    host          'dynamic'
    secret        { SecureRandom.hex(10) }
    disallow      'all'
    allow         'ulaw, alaw, gsm, g722'
    callerid      ''
    callerid_name ''
    context       'default'
    accountcode   ''
    language      'en'
    qualify       'yes'
    nat           'no'
  end
end
