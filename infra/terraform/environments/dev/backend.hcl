# State location only - no credentials (Entra auth through OIDC).
resource_group_name  = "rg-idp-tfstate-dev"
storage_account_name = "stidptfstatedevnv01"
container_name       = "apps"
key                  = "apps/orders-api/dev.tfstate"
use_azuread_auth     = true
use_oidc             = true
