require 'telegram/bot'
token='351731739:AAFx9_LnSj8RqhUkdR8eEgT9hvQPAqa45fs'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
  
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "I am the Krishh's bot, My commands are /wunder,/map")
    when '/wunder'
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to https://www.wunder.org")
    when '/map'
      bot.api.send_location(chat_id: message.chat.id, latitude: 53.5420000, longitude: 10.0010000)
   end
  end
end
