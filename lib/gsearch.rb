require 'launchy'


def get_serach
    return @name = ARGV.to_s.gsub(' ', '+')
end

def check_if_user_gave_input
    abort("Please enter the key words you are looking") if ARGV.empty?
end

def google_search(name)
    Launchy.open("https://www.google.com/search?q=#{name}")
end

def perform
    get_search
    check_if_user_gave_input
    google_search(@name)
end

perform