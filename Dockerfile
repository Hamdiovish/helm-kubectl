FROM ubuntu:18.04

LABEL maintainer="wuwentao <wwtg99@126.com>"
ENV KUBE_VERSION="v1.14.3" HELM_VERSION="v2.14.1"
RUN apt-get update -y && \ 
    apt-get install -y openssl ca-certificates wget apt-utils && \
    wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl && \
    wget -q https://storage.googleapis.com/kubernetes-helm/helm-${HELM_VERSION}-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /usr/local/bin/helm && \
    chmod +x /usr/local/bin/helm

CMD bash
