# Rendered from the Backstage form (request 47711a74-e8bf-442b-ad3d-494c218f136b) and validated by the platform.
# Change through a pull request; the platform plans it and asks for approval in Backstage.

application       = "orders-api"
environment       = "dev"
owner             = "team-orders"
request_id        = "47711a74-e8bf-442b-ad3d-494c218f136b"
repository        = "nixvarghese01/orders-api"
region            = "swedencentral"
subscription_id   = "0b887dd3-aad0-4e18-a49d-3d3c97349c1f"
availability_tier = "standard"

resource_group = {
  mode = "existing"
  name = "rg-idp-apps-dev"
}

aks_cluster = {
  name           = "aks-idp-shared-dev"
  resource_group = "rg-idp-aks-dev"
}

container_registry = {
  name           = "acridpdevnv01"
  resource_group = "rg-idp-registry-dev"
}

namespace = {
  mode = "new"
  name = "orders-api"
}

runtime_capability = {
  type           = "storage"
  mode           = "existing"
  name           = "stidpshareddevnv01"
  resource_group = "rg-idp-apps-dev"
}

deployment_identity = {
  name           = "id-idp-deployment-dev"
  resource_group = "rg-idp-identities-dev"
}
