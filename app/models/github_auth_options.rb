class GithubAuthOptions
  def initialize(env)
    @request = Rack::Request.new(env)
  end

  def to_hash
    if @request.params["access"] == "full"
      { scope: "repo,user:email,read:org" }
    else
      { scope: "public_repo,user:email,read:org" }
    end
  end
end
