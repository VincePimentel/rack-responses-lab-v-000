require 'pry'

class Application
  def call(env)
    resp = Rack::Response.new

    time = Time.now

    if time.hour <= 12 && time.minute <= 59
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish

    binding.pry
  end
end
