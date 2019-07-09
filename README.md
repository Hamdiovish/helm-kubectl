Docker image helm-kubectl on Ubuntu
===================================

# Description

This image contain helm and kubectl based on Ubuntu.

# Tags

- [2.14.1](https://github.com/wwtg99/helm-kubectl/releases/tag/2.14.1): helm v2.14.1, kubectl 1.14.3, ubuntu 18.04
- [2.14.1-1](https://github.com/wwtg99/helm-kubectl/releases/tag/2.14.1-1): helm v2.14.1, kubectl 1.15.0, ubuntu 18.04

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

Also add helm config directory if needed.

```
docker run --rm -v ~/.helm:/root/.helm wwtg99/helm-kubectl helm repo list
```

Or you can initialize helm home directory in the container by

```
helm init --client-only
```

But it will try to connect to stable repository at https://kubernetes-charts.storage.googleapis.com, if you can not connect to this URL (GFW?), you can change it by `--stable-repo-url https://kubernetes.oss-cn-hangzhou.aliyuncs.com/charts`.

Usually use it in bash

```
docker run --name kube -ti -v ~/.kube:/root/.kube -v ~/.helm:/root/.helm wwtg99/helm-kubectl bash
```

# Acknowledgement

[https://github.com/dtzar/helm-kubectl](https://github.com/dtzar/helm-kubectl)

