# This help to retreive and create basic ressource
# with myintervals API
# http://www.myintervals.com/api/authentication.php
class TimeTask

  def initialize(host, token, password)
    @auth = {token: token, password: password}
    @host = host
  end

  def tasks(options = {})
    options.merge!({ userpwd: userpwd})
  end

  def fetch! options = {}
    response = Typhoeus::Request.get(
      "#{@host}/tasks",
      userpwd: userpwd,
      params: {
        limit: 1000
      }
    )
  end

  private

  def userpwd
    { userpwd:"#{@auth[:token]}:#{@auth[:password]}"}
  end

end
