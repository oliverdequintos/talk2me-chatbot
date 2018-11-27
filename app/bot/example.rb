include Facebook::Messenger

Bot.on :message do |message|
  # message.reply(text: 'Hello, human!')
  Bot.deliver({
    recipient: message.sender,
    message: {
      text: message.text
    }
  }, access_token: ENV["ACCESS_TOKEN"])
end
