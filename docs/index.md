# orders-api

Orders REST API created from the NestJS golden path

| | |
|---|---|
| Owner | `group:default/team-orders` |
| Environment | `dev` |
| Endpoint | `https://orders-api.4.165.23.47.nip.io` |
| Availability tier | `standard` |
| Platform request | `47711a74-e8bf-442b-ad3d-494c218f136b` |

## Runbook

- **Health:** `GET /health/live` (process up), `GET /health/ready` (dependencies, including Azure Storage through Workload Identity).
- **Logs:** `kubectl logs -n orders-api deploy/orders-api` (namespace-scoped access through the deployment identity, or your team's read role).
- **Redeploy:** re-run the `application-deploy` workflow on `main`.
- **Rollback:** a failed Helm upgrade is undone by `--atomic`; a readiness or smoke check that fails after Helm finished restores the previous revision, verified, and the run's `deploy-diagnostics` artifact keeps the evidence. To roll back a good-but-unwanted release, revert the commit on `main`.
- **Current health:** the component's *Operations* tab in Backstage shows what runs now (replicas, pod readiness, image digest), separately from how it was provisioned.
