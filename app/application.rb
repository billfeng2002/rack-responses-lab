class Application
    def call(env)
        resp=Rack::Response.new
        time=Time.now
        resp.write(time.hour>=12? "Good Afternoon!" : "Good Morning!")
        resp.finish
    end
end