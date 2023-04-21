require "oauth2"
require "http/client"
require "json"

class OIDC::Client < OAuth2::Client
  getter config : OIDC::Configuration

  def self.get_wellknown(url : String) : Configuration
    response = HTTP::Client.get(url)
    raise Error.new("unable to get #{url}") if response.status_code != 200
    Configuration.from_json(response.body)
  end

  def initialize(@url : String, client_id : String, client_secret : String, *, redirect_uri : String)
    @config = self.class.get_wellknown(@url)
    super(@config.issuer, client_id, client_secret,
      authorize_uri: @config.authorization_endpoint,
      token_uri: @config.token_endpoint.not_nil!,
      redirect_uri: redirect_uri)
  end

  def user_info(access_token : String, *, user_info_class uic = UserInfo)
    at = OAuth2::AccessToken::Bearer.new(access_token, 1)
    user_info(at, user_info_class: uic)
  end

  def user_info(access_token : OAuth2::AccessToken, *, user_info_class = UserInfo)
    client = http_client
    access_token.authenticate(client)
    req = client.post(@config.userinfo_endpoint.not_nil!, headers: DEFAULT_HEADERS.dup)

    if req.status_code != 200
      raise Error.new("#{req.status} #{req.body}")
    end

    user_info_class.from_json(req.body)
  end
end
