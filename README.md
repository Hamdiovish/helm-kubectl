Docker image helm-kubectl on Ubuntu
===================================

# Description

This image contain helm and kubectl based on Ubuntu.

# Tags

- [2.14.1](https://github.com/wwtg99/helm-kubectl/releases/tag/2.14.1): helm v2.14.1, kubectl 1.14.3, ubuntu 18.04

# Usage

Basic usage

```
docker run --rm wwtg99/helm-kubectl helm version
docker run --rm wwtg99/helm-kubectl kubectl version
```

But it is useless if you do not mount kube config file onto it. You can mount your kube config file to `/root/.kube` or other locations with `KUBECONFIG` environment or `--kubeconfig` option set [doc](https://kubernetes.io/docs/concepts/configuration/organize-cluster-access-kubeconfig/).

```
docker run --rm -v ~/.kube:/root/.kube wwtg99/helm-kubectl kubectl version
```

# Acknowledgement

[https://github.com/dtzar/helm-kubectl](https://github.com/dtzar/helm-kubectl)

