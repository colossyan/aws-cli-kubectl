ARG AWS_CLI_VERSION=2.4.29
FROM amazon/aws-cli:$AWS_CLI_VERSION

WORKDIR /aws

ARG KUBECTL_VERSION=1.21.11
ENV KUBECTL_VERSION=$KUBECTL_VERSION
RUN curl -LO  -o kubectl "https://dl.k8s.io/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl"
RUN chmod +x kubectl
RUN mv kubectl /bin/

# goes well with kubectl
RUN yum install -y jq

# for Git checkout
RUN yum install -y git tar gzip

ENTRYPOINT [""]
