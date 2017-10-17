require 'gmail'
require 'rubygems'
require 'nokogiri'
require 'open-uri'

username= 'moha91330@gmail.com'
password = 'yerres91330'

gmail = Gmail.connect(username, password)

  email = gmail.compose do
    to "bendrissmohamed01@gmail.com"
    subject "Having fun in Los Angeles!"
  body "Spent the day on the road..."
end
email.deliver! # or: gmail.deliver(email)
gmail.logout



