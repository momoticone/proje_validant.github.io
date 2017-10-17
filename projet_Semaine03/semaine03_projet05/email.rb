require 'gmail'

username= 'moha91330@gmail.com'
password = 'yerres91330'

Gmail.connect(username, password) do |gmail|
  gmail.logged_in?
end

