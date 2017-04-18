require 'twitter'

# client = Twitter::REST::Client.new do |config|
#   config.consumer_key        = "LREH2mP8hlbmAB4jCgufIQLAx"
#   config.consumer_secret     = "816o148NtCUKhBYg7ldC93SwFSyusRr0UVfYvTzN3Ercu5wjVM"
#   config.access_token        = "25763542-X43ywERhaMdkKahoIO7xWX15bP3EOR3mGLhNZOEJQ"
#   config.access_token_secret = "uH5F0UlOAonym63RpozlLHL9teNmQMqLYE6Z95y0SKrON"
# end


client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "LREH2mP8hlbmAB4jCgufIQLAx"
  config.consumer_secret     = "816o148NtCUKhBYg7ldC93SwFSyusRr0UVfYvTzN3Ercu5wjVM"
  config.access_token        = "25763542-X43ywERhaMdkKahoIO7xWX15bP3EOR3mGLhNZOEJQ"
  config.access_token_secret = "uH5F0UlOAonym63RpozlLHL9teNmQMqLYE6Z95y0SKrON"
end


topics = ["lula", "dilma", "temer", "serra", "aecio", "bolsonaro", "bolsomito", "doria", "moro"]
client.filter(track: topics.join(","), language: 'pt') do |object|
  # puts "*"*30
  # puts "text: " + object.text if object.is_a?(Twitter::Tweet)
  # puts "retweet_count: " + object.retweet_count.to_s if object.is_a?(Twitter::Tweet)
  # puts "source: " + object.source if object.is_a?(Twitter::Tweet)
  # puts "filter_level: " + object.filter_level if object.is_a?(Twitter::Tweet)
  # puts "full_text: " + object.full_text if object.is_a?(Twitter::Tweet)
end
