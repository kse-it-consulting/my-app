# Security Policy

## Supported Versions

Only the latest commit on `main` is supported. There is no LTS branch.

## Reporting a Vulnerability

If you believe you have found a security vulnerability in this project, please **do not** open a public GitHub issue.

Instead, report it privately:

1. Use GitHub's [private vulnerability reporting](https://github.com/kse-it-consulting/my-app/security/advisories/new) feature on this repository.
2. Or email the maintainers (see `CODEOWNERS` if present, or the org admins).

Include:

- A description of the issue and its impact.
- Steps to reproduce, or a proof of concept.
- Your assessment of severity.

You can expect an initial acknowledgement within 5 business days. We aim to provide a fix or mitigation timeline within 14 days of acknowledgement.

## Disclosure Policy

We follow coordinated disclosure: we will ask you to keep the issue private until a fix is shipped. Once a fix is released, we will publish a GitHub Security Advisory crediting the reporter (unless you ask to remain anonymous).

## Out of Scope

- Issues in third-party dependencies — please report those upstream.
- Self-XSS, missing security headers on the demo deployment, and other findings on the lab environment that do not affect the source code itself.
