# Assisted Service Chart

Open Cluster Management Assisted Service

## Contributing

For steps on how to contribute and test the Assisted Service chart, see [CONTRIBUTING](./CONTRIBUTING.md) guidelines.

## About

This repository is a helm chart for [Assisted Service](https://github.com/openshift/assisted-service). CRDs for Assisted Service are explicitly not contained within this helm chart, and instead placed in [hub-crds](https://github.com/open-cluster-management/hub-crds).

## Development

The following make targets are provided for development - 

### make template

```bash
❯ make template
helm template stable/assisted-service
...
```

### make package

```bash
❯ make package
helm package stable/assisted-service --version 2.3.0
...
```
### make lint

```bash
❯ make lint
helm lint stable/assisted-service
...
```

### make install

```bash
❯ make install
helm install "assisted-service" stable/assisted-service --version 2.3.0 
...
```
