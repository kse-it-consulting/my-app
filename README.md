# my-app

[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/kse-it-consulting/my-app/badge)](https://scorecard.dev/viewer/?uri=github.com/kse-it-consulting/my-app)

Tiny Express service used as the deployment target for the KSE SEC327 CI/CD security course labs.

## Endpoints

- `GET /` — `{ "status": "ok", "message": "Hello World" }`
- `GET /health` — `{ "status": "healthy" }`

## Local development

```bash
npm install
npm test
npm start
```

## CI/CD

- `ci-pr.yml` — runs tests and Trivy filesystem scan on every pull request to `main`.
- `ci-main.yml` — on push to `main`: tests, Docker build + push to GHCR, Cosign keyless signing, SLSA provenance attestation, SBOM upload to Dependency-Track, container vulnerability scan, then bumps the image tag in `kse-labs-deployment` so ArgoCD picks up the new release.
- `codeql.yml` — JavaScript SAST.
- `scorecard.yml` — OpenSSF Scorecard.

## Deployment

ArgoCD watches `kse-it-consulting/kse-labs-deployment` and deploys this service to the `applications` namespace on the local K8s lab. Manifests live at [`applications/my-app/`](https://github.com/kse-it-consulting/kse-labs-deployment/tree/main/applications/my-app).
