require "./spec_helper"

describe OIDC do
  it "works" do
    config = OIDC::Client.get_wellknown("https://www.facebook.com/.well-known/openid-configuration")
    config.issuer.should eq "https://www.facebook.com"
  end
end
