# Get twilio-ruby from twilio.com/docs/ruby/install
require 'rubygems' # This line not needed for ruby > 1.8
require 'twilio-ruby'

# Get your Account Sid and Auth Token from http://twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new(account_sid, auth_token)

call = @client.calls.create(
  url: 'http://demo.twilio.com/docs/voice.xml',
  to: '+14155551212',
  send_digits: '1234#',
  from: '+18668675310',
  method: 'GET'
)

puts call.start_time
