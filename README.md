# oidc [![.github/workflows/ci.yml](https://github.com/threez/oidc.cr/actions/workflows/ci.yml/badge.svg)](https://github.com/threez/oidc.cr/actions/workflows/ci.yml) [![https://threez.github.io/oidc.cr/](https://badgen.net/badge/api/documentation/green)](https://threez.github.io/oidc.cr/)

OIDC client for crystal extends the regular `OAuth2::Client`.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     oidc:
       github: threez/oidc
   ```

2. Run `shards install`

## Usage

```crystal
require "oidc"

client = OIDC::Client.new("http://example.com/", "client-id", "ALSJDHJKASHGDJHGASKDJG)

# use the client to get authorize uri
state = UUID.random
client.get_authorize_uri("profile email roles openid", state.to_s)

# get access token for code
authorization_code = params["code"]
access_token = client.get_access_token_using_authorization_code(authorization_code)
```

## Contributing

1. Fork it (<https://github.com/threez/oidc.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Vincent Landgraf](https://github.com/threez) - creator and maintainer
