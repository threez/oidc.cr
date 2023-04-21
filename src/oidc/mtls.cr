class OIDC::MtlsEndpointAliases
  include JSON::Serializable
  include JSON::Serializable::Unmapped

  @[JSON::Field(key: "token_endpoint")]
  property token_endpoint : String?

  @[JSON::Field(key: "revocation_endpoint")]
  property revocation_endpoint : String?

  @[JSON::Field(key: "introspection_endpoint")]
  property introspection_endpoint : String?

  @[JSON::Field(key: "device_authorization_endpoint")]
  property device_authorization_endpoint : String?

  @[JSON::Field(key: "registration_endpoint")]
  property registration_endpoint : String?

  @[JSON::Field(key: "userinfo_endpoint")]
  property userinfo_endpoint : String?

  @[JSON::Field(key: "pushed_authorization_request_endpoint")]
  property pushed_authorization_request_endpoint : String?

  @[JSON::Field(key: "backchannel_authentication_endpoint")]
  property backchannel_authentication_endpoint : String?
end
