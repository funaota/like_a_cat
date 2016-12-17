require 'notee'

# Recommendation using .env

Notee.configure do |config|

  # root-user
  config.notee_id = ENV['NOTEE_ID']
  config.notee_password = ENV['NOTEE_PASSWORD']

  # recaptcha
  config.recaptcha_key = ENV['RECAPTCHA_KEY']
  config.recaptcha_secret_key = ENV['RECAPTCHA_SECRET_KEY']

  # blog
  config.blog_meta = {
      title: "Like a cat",
      url: "http://hogehoge.com",
      keyword: "hoge, hoge, hoge",
      description: "i like a cat. and, i want to live like a cat",
      og_image: "http://hogehoge.com/hoge.png",
      twitter_id: "@dev_funaota"
  }

  # google-analytics
  config.google_analytics = "UA-67919239-3"
end
