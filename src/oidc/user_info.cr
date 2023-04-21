class OIDC::UserInfo
  include JSON::Serializable
  include JSON::Serializable::Unmapped

  @[JSON::Field(key: "sub")]
  property subject : String

  @[JSON::Field(key: "name")]
  property name : String?

  @[JSON::Field(key: "preferred_username")]
  property preferred_username : String?

  @[JSON::Field(key: "given_name")]
  property given_name : String?

  @[JSON::Field(key: "family_name")]
  property family_name : String?

  @[JSON::Field(key: "email")]
  property email : String?

  @[JSON::Field(key: "email_verified")]
  property email_verified : Bool?
end
