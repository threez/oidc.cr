class OIDC::Configuration
  include JSON::Serializable
  include JSON::Serializable::Unmapped

  @[JSON::Field(key: "issuer")]
  property issuer : String

  @[JSON::Field(key: "authorization_endpoint")]
  property authorization_endpoint : String

  @[JSON::Field(key: "token_endpoint")]
  property token_endpoint : String?

  @[JSON::Field(key: "introspection_endpoint")]
  property introspection_endpoint : String?

  @[JSON::Field(key: "userinfo_endpoint")]
  property userinfo_endpoint : String?

  @[JSON::Field(key: "end_session_endpoint")]
  property end_session_endpoint : String?

  @[JSON::Field(key: "frontchannel_logout_session_supported")]
  property frontchannel_logout_session_supported : Bool?

  @[JSON::Field(key: "frontchannel_logout_supported")]
  property frontchannel_logout_supported : Bool?

  @[JSON::Field(key: "jwks_uri")]
  property jwks_uri : String

  @[JSON::Field(key: "check_session_iframe")]
  property check_session_iframe : String?

  @[JSON::Field(key: "grant_types_supported")]
  property grant_types_supported : Array(String)?

  @[JSON::Field(key: "acr_values_supported")]
  property acr_values_supported : Array(String)?

  @[JSON::Field(key: "response_types_supported")]
  property response_types_supported : Array(String)?

  @[JSON::Field(key: "subject_types_supported")]
  property subject_types_supported : Array(String)?

  @[JSON::Field(key: "id_token_signing_alg_values_supported")]
  property id_token_signing_alg_values_supported : Array(String)?

  @[JSON::Field(key: "id_token_encryption_alg_values_supported")]
  property id_token_encryption_alg_values_supported : Array(String)?

  @[JSON::Field(key: "id_token_encryption_enc_values_supported")]
  property id_token_encryption_enc_values_supported : Array(String)?

  @[JSON::Field(key: "userinfo_signing_alg_values_supported")]
  property userinfo_signing_alg_values_supported : Array(String)?

  @[JSON::Field(key: "userinfo_encryption_alg_values_supported")]
  property userinfo_encryption_alg_values_supported : Array(String)?

  @[JSON::Field(key: "userinfo_encryption_enc_values_supported")]
  property userinfo_encryption_enc_values_supported : Array(String)?

  @[JSON::Field(key: "request_object_signing_alg_values_supported")]
  property request_object_signing_alg_values_supported : Array(String)?

  @[JSON::Field(key: "request_object_encryption_alg_values_supported")]
  property request_object_encryption_alg_values_supported : Array(String)?

  @[JSON::Field(key: "request_object_encryption_enc_values_supported")]
  property request_object_encryption_enc_values_supported : Array(String)?

  @[JSON::Field(key: "response_modes_supported")]
  property response_modes_supported : Array(String)?

  @[JSON::Field(key: "registration_endpoint")]
  property registration_endpoint : String?

  @[JSON::Field(key: "token_endpoint_auth_methods_supported")]
  property token_endpoint_auth_methods_supported : Array(String)?

  @[JSON::Field(key: "token_endpoint_auth_signing_alg_values_supported")]
  property token_endpoint_auth_signing_alg_values_supported : Array(String)?

  @[JSON::Field(key: "introspection_endpoint_auth_methods_supported")]
  property introspection_endpoint_auth_methods_supported : Array(String)?

  @[JSON::Field(key: "introspection_endpoint_auth_signing_alg_values_supported")]
  property introspection_endpoint_auth_signing_alg_values_supported : Array(String)?

  @[JSON::Field(key: "authorization_signing_alg_values_supported")]
  property authorization_signing_alg_values_supported : Array(String)?

  @[JSON::Field(key: "authorization_encryption_alg_values_supported")]
  property authorization_encryption_alg_values_supported : Array(String)?

  @[JSON::Field(key: "authorization_encryption_enc_values_supported")]
  property authorization_encryption_enc_values_supported : Array(String)?

  @[JSON::Field(key: "claims_supported")]
  property claims_supported : Array(String)?

  @[JSON::Field(key: "claim_types_supported")]
  property claim_types_supported : Array(String)?

  @[JSON::Field(key: "claims_parameter_supported")]
  property claims_parameter_supported : Bool?

  @[JSON::Field(key: "scopes_supported")]
  property scopes_supported : Array(String)?

  @[JSON::Field(key: "request_parameter_supported")]
  property request_parameter_supported : Bool?

  @[JSON::Field(key: "request_uri_parameter_supported")]
  property request_uri_parameter_supported : Bool?

  @[JSON::Field(key: "require_request_uri_registration")]
  property require_request_uri_registration : Bool?

  @[JSON::Field(key: "code_challenge_methods_supported")]
  property code_challenge_methods_supported : Array(String)?

  @[JSON::Field(key: "tls_client_certificate_bound_access_tokens")]
  property tls_client_certificate_bound_access_tokens : Bool?

  @[JSON::Field(key: "revocation_endpoint")]
  property revocation_endpoint : String?

  @[JSON::Field(key: "revocation_endpoint_auth_methods_supported")]
  property revocation_endpoint_auth_methods_supported : Array(String)?

  @[JSON::Field(key: "revocation_endpoint_auth_signing_alg_values_supported")]
  property revocation_endpoint_auth_signing_alg_values_supported : Array(String)?

  @[JSON::Field(key: "backchannel_logout_supported")]
  property backchannel_logout_supported : Bool?

  @[JSON::Field(key: "backchannel_logout_session_supported")]
  property backchannel_logout_session_supported : Bool?

  @[JSON::Field(key: "device_authorization_endpoint")]
  property device_authorization_endpoint : String?

  @[JSON::Field(key: "backchannel_token_delivery_modes_supported")]
  property backchannel_token_delivery_modes_supported : Array(String)?

  @[JSON::Field(key: "backchannel_authentication_endpoint")]
  property backchannel_authentication_endpoint : String?

  @[JSON::Field(key: "backchannel_authentication_request_signing_alg_values_supported")]
  property backchannel_authentication_request_signing_alg_values_supported : Array(String)?

  @[JSON::Field(key: "require_pushed_authorization_requests")]
  property require_pushed_authorization_requests : Bool?

  @[JSON::Field(key: "pushed_authorization_request_endpoint")]
  property pushed_authorization_request_endpoint : String?

  @[JSON::Field(key: "mtls_endpoint_aliases")]
  property mtls_endpoint_aliases : MtlsEndpointAliases?
end
