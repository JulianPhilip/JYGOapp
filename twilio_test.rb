require 'twilio-ruby'

def send_sms(order, shopper)
  account_sid = ENV['TWILIO_SID']
  auth_token = ENV['TWILIO_AUTHTOKEN']

  client = Twilio::REST::Client.new account_sid, auth_token
  from = "+32460205695" # Your Twilio number
  to =   "+32478393523"
  client.account.messages.create(
    :from => from,
    :to => shopper.user....,
    :body => "Hey this is my message from Twilio using Ruby"
  )
end

send_sms()
